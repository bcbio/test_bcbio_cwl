



workflow jointcall {
    Array[JointvcBatchRec] jointvc_batch_rec
    
    call postprocess_variants {
        input: jointvc_batch_rec=jointvc_batch_rec, 
          vrn_file_joint_toolinput=concat_batch_variantcalls_jointvc.vrn_file_joint
    }


    call concat_batch_variantcalls_jointvc {
        input: jointvc_batch_rec=jointvc_batch_rec, 
          region=run_jointvc.region, 
          vrn_file_region=run_jointvc.vrn_file_region
    }


    call finalize_jointvc {
        input: jointvc_batch_rec=jointvc_batch_rec, 
          vrn_file_joint=postprocess_variants.vrn_file_joint
    }


    scatter (region_local in get_parallel_regions_jointvc.region) {
  
      call run_jointvc {
          input: jointvc_batch_rec=jointvc_batch_rec, 
            region_toolinput=region_local
      }
  
    }


    call get_parallel_regions_jointvc {
        input: jointvc_batch_rec=jointvc_batch_rec
    }

    
   output {
     Array[JointvcRec] jointvc_rec = finalize_jointvc.jointvc_rec
     File vrn_file_joint = postprocess_variants.vrn_file_joint
   }

}

task postprocess_variants {
    Array[JointvcBatchRec] jointvc_batch_rec
    File vrn_file_joint_toolinput

    command {
        bcbio_nextgen.py runfn postprocess_variants cwl \
        sentinel_runtime=cores,2,ram,4096MB \
        sentinel_parallel=batch-single \
        sentinel_outputs=vrn_file_joint \
        sentinel_inputs=jointvc_batch_rec:record,vrn_file_joint:var \
        ${sep=';;' jointvc_batch_rec} \
        ${vrn_file_joint_toolinput}
    }

    output {
        File vrn_file_joint = read_string('wdl.output.vrn_file_joint.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '2'
        memory: '4096 MB'
    }
}


task concat_batch_variantcalls_jointvc {
    Array[JointvcBatchRec] jointvc_batch_rec
    Array[String] region
    Array[File] vrn_file_region

    command {
        bcbio_nextgen.py runfn concat_batch_variantcalls_jointvc cwl \
        sentinel_runtime=cores,1,ram,2048MB \
        sentinel_parallel=batch-merge \
        sentinel_outputs=vrn_file_joint \
        sentinel_inputs=jointvc_batch_rec:record,region:var,vrn_file_region:var \
        ${sep=';;' jointvc_batch_rec} \
        ${sep=';;' region} \
        ${sep=';;' vrn_file_region}
    }

    output {
        File vrn_file_joint = read_string('wdl.output.vrn_file_joint.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '1'
        memory: '2048 MB'
    }
}


task finalize_jointvc {
    Array[JointvcBatchRec] jointvc_batch_rec
    File vrn_file_joint

    command {
        bcbio_nextgen.py runfn finalize_jointvc cwl \
        sentinel_runtime=cores,1,ram,2048MB \
        sentinel_parallel=batch-single \
        sentinel_outputs=jointvc_rec:description;validate__summary;validate__tp;validate__fp;validate__fn;vrn_file;config__algorithm__validate;reference__fasta__base;reference__rtg;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;metadata__phenotype;reference__genome_context;reference__snpeff__hg19;config__algorithm__validate_regions;genome_build;genome_resources__aliases__human;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;genome_resources__aliases__ensembl;genome_resources__aliases__snpeff;align_bam;regions__sample_callable;config__algorithm__callable_regions;vrn_file_joint \
        sentinel_inputs=jointvc_batch_rec:record,vrn_file_joint:var \
        ${sep=';;' jointvc_batch_rec} \
        ${vrn_file_joint}
    }

    output {
        Array[JointvcRec] jointvc_rec = read_struct('wdl.output.jointvc_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '1'
        memory: '2048 MB'
    }
}


task run_jointvc {
    Array[JointvcBatchRec] jointvc_batch_rec
    String region_toolinput

    command {
        bcbio_nextgen.py runfn run_jointvc cwl \
        sentinel_runtime=cores,2,ram,5120MB \
        sentinel_parallel=batch-parallel \
        sentinel_outputs=vrn_file_region,region \
        sentinel_inputs=jointvc_batch_rec:record,region:var \
        ${sep=';;' jointvc_batch_rec} \
        ${region_toolinput}
    }

    output {
        File vrn_file_region = read_string('wdl.output.vrn_file_region.txt')
        String region = read_string('wdl.output.region.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '2'
        memory: '5120 MB'
    }
}


task get_parallel_regions_jointvc {
    Array[JointvcBatchRec] jointvc_batch_rec

    command {
        bcbio_nextgen.py runfn get_parallel_regions_jointvc cwl \
        sentinel_runtime=cores,1,ram,2048MB \
        sentinel_parallel=batch-split \
        sentinel_outputs=region \
        sentinel_inputs=jointvc_batch_rec:record \
        ${sep=';;' jointvc_batch_rec}
    }

    output {
        Array[String] region = read_lines('wdl.output.region.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '1'
        memory: '2048 MB'
    }
}

