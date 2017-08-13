



workflow variantcall {
    Array[BatchRec] batch_rec
    
    scatter (region_local in get_parallel_regions.region) {
  
      call variantcall_batch_region {
          input: batch_rec=batch_rec, 
            region_toolinput=region_local
      }
  
    }


    call concat_batch_variantcalls {
        input: batch_rec=batch_rec, 
          region=variantcall_batch_region.region, 
          vrn_file_region=variantcall_batch_region.vrn_file_region
    }


    call get_parallel_regions {
        input: batch_rec=batch_rec
    }


    call compare_to_rm {
        input: batch_rec=batch_rec, 
          vrn_file=concat_batch_variantcalls.vrn_file
    }

    
   output {
     Array[VcRec] vc_rec = compare_to_rm.vc_rec
   }

}

task variantcall_batch_region {
    Array[BatchRec] batch_rec
    String region_toolinput

    command {
        bcbio_nextgen.py runfn variantcall_batch_region cwl \
        sentinel_runtime=cores,1,ram,2560MB \
        sentinel_parallel=batch-parallel \
        sentinel_outputs=vrn_file_region,region \
        sentinel_inputs=batch_rec:record,region:var \
        ${sep=';;' batch_rec} \
        ${region_toolinput}
    }

    output {
        File vrn_file_region = read_string('wdl.output.vrn_file_region.txt')
        String region = read_string('wdl.output.region.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '1'
        memory: '2560 MB'
    }
}


task concat_batch_variantcalls {
    Array[BatchRec] batch_rec
    Array[String] region
    Array[File] vrn_file_region

    command {
        bcbio_nextgen.py runfn concat_batch_variantcalls cwl \
        sentinel_runtime=cores,1,ram,2048MB \
        sentinel_parallel=batch-merge \
        sentinel_outputs=vrn_file \
        sentinel_inputs=batch_rec:record,region:var,vrn_file_region:var \
        ${sep=';;' batch_rec} \
        ${sep=';;' region} \
        ${sep=';;' vrn_file_region}
    }

    output {
        File vrn_file = read_string('wdl.output.vrn_file.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '1'
        memory: '2048 MB'
    }
}


task get_parallel_regions {
    Array[BatchRec] batch_rec

    command {
        bcbio_nextgen.py runfn get_parallel_regions cwl \
        sentinel_runtime=cores,1,ram,2048MB \
        sentinel_parallel=batch-split \
        sentinel_outputs=region \
        sentinel_inputs=batch_rec:record \
        ${sep=';;' batch_rec}
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


task compare_to_rm {
    Array[BatchRec] batch_rec
    File vrn_file

    command {
        bcbio_nextgen.py runfn compare_to_rm cwl \
        sentinel_runtime=cores,2,ram,4096MB \
        sentinel_parallel=batch-single \
        sentinel_outputs=vc_rec:validate__summary;validate__tp;validate__fp;validate__fn;description;vrn_file;config__algorithm__validate;reference__fasta__base;reference__rtg;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;metadata__phenotype;reference__genome_context;reference__snpeff__hg19;config__algorithm__validate_regions;genome_build;genome_resources__aliases__human;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__cosmic;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;genome_resources__aliases__ensembl;genome_resources__aliases__snpeff;align_bam;regions__sample_callable;config__algorithm__callable_regions \
        sentinel_inputs=batch_rec:record,vrn_file:var \
        ${sep=';;' batch_rec} \
        ${vrn_file}
    }

    output {
        Array[VcRec] vc_rec = read_struct('wdl.output.vc_rec.txt')
    }

    runtime {
        docker: 'quay.io/bcbio/bcbio-vc'
        cpu: '2'
        memory: '4096 MB'
    }
}

