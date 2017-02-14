
workflow main_run_info_cwl {
    Array[Float] config__algorithm__align_split_size
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[Array[String]] config__algorithm__variantcaller
    Array[Array[String]] config__algorithm__svcaller
    Array[File] genome_resources__rnaseq__transcripts_mask
    Array[File] genome_resources__variation__train_1000g
    Array[String] config__algorithm__coverage_interval
    Array[File] genome_resources__rnaseq__gene_bed
    Array[File] genome_resources__variation__train_hapmap
    Array[String] rgnames__lb
    Array[File] genome_resources__variation__dbnsfp
    Array[String] rgnames__rg
    Array[String] config__algorithm__realign
    Array[String] metadata__batch
    Array[String] rgnames__lane
    Array[String] metadata__phenotype
    Array[Float] config__algorithm__nomap_split_targets
    Array[File] reference__bwa__indexes
    Array[Array[File]] reference__genome_context
    Array[Float] config__algorithm__nomap_split_size
    Array[Array[File]] files
    Array[String] genome_resources__srnaseq__srna_transcripts
    Array[String] config__algorithm__cwl_reporting
    Array[File] reference__snpeff__hg19
    Array[String] description
    Array[File] config__algorithm__validate_regions
    Array[String] config__algorithm__aligner
    Array[File] genome_resources__variation__train_omni
    Array[String] rgnames__pl
    Array[String] genome_build
    Array[String] rgnames__pu
    Array[String] config__algorithm__recalibrate
    Array[File] config__algorithm__coverage
    Array[File] genome_resources__rnaseq__transcripts
    Array[String] genome_resources__aliases__human
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[String] config__algorithm__mark_duplicates
    Array[File] genome_resources__variation__ancestral
    Array[String] vrn_file
    Array[Array[String]] reference__viral
    Array[Float] genome_resources__version
    Array[File] genome_resources__variation__cosmic
    Array[String] genome_resources__srnaseq__mirbase
    Array[Array[String]] config__algorithm__qc
    Array[String] analysis
    Array[String] rgnames__sample
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[String] genome_resources__aliases__ensembl
    Array[File] reference__snap__indexes
    Array[File] genome_resources__variation__train_indels
    Array[String] genome_resources__aliases__snpeff
    Array[Array[String]] config__algorithm__archive
    
    scatter (config__algorithm__coverage_local in config__algorithm__coverage
             reference__fasta__base_local in reference__fasta__base
             config__algorithm__variant_regions_local in config__algorithm__variant_regions
             description_local in description) {
  
      call prep_samples {
          input: config__algorithm__coverage=config__algorithm__coverage_local, 
            config__algorithm__variant_regions=config__algorithm__variant_regions_local, 
            reference__fasta__base=reference__fasta__base_local, 
            description=description_local
      }
  
    }


    call qc_to_rec {
        input: align_bam=alignment.align_bam, 
          analysis=analysis, 
          reference__fasta__base=reference__fasta__base, 
          genome_build=genome_build, 
          config__algorithm__coverage_interval=postprocess_alignment.config__algorithm__coverage_interval, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          config__algorithm__qc=config__algorithm__qc, 
          config__algorithm__variant_regions=postprocess_alignment.config__algorithm__variant_regions, 
          config__algorithm__variant_regions_merged=postprocess_alignment.config__algorithm__variant_regions_merged, 
          config__algorithm__coverage=postprocess_alignment.config__algorithm__coverage, 
          config__algorithm__coverage_merged=postprocess_alignment.config__algorithm__coverage_merged, 
          description=description
    }


    call batch_for_variantcall {
        input: analysis=analysis, 
          genome_build=genome_build, 
          align_bam=alignment.align_bam, 
          config__algorithm__callable_regions=combine_sample_regions.config__algorithm__callable_regions, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          regions__callable=postprocess_alignment.regions__callable, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=postprocess_alignment.config__algorithm__coverage_interval, 
          config__algorithm__variant_regions=postprocess_alignment.config__algorithm__variant_regions, 
          config__algorithm__validate=config__algorithm__validate, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          reference__genome_context=reference__genome_context, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          description=description
    }


    call combine_sample_regions {
        input: regions__callable=postprocess_alignment.regions__callable, 
          regions__nblock=postprocess_alignment.regions__nblock, 
          config__algorithm__nomap_split_size=config__algorithm__nomap_split_size, 
          config__algorithm__nomap_split_targets=config__algorithm__nomap_split_targets, 
          reference__fasta__base=reference__fasta__base, 
          description=description
    }


    scatter (qc_rec_local in qc_to_rec.qc_rec) {
  
      call pipeline_summary {
          input: description=qc_rec_local.description, 
            reference__fasta__base=qc_rec_local.reference__fasta__base, 
            config__algorithm__coverage_interval=qc_rec_local.config__algorithm__coverage_interval, 
            genome_build=qc_rec_local.genome_build, 
            config__algorithm__coverage=qc_rec_local.config__algorithm__coverage, 
            config__algorithm__tools_off=qc_rec_local.config__algorithm__tools_off, 
            config__algorithm__qc=qc_rec_local.config__algorithm__qc, 
            analysis=qc_rec_local.analysis, 
            config__algorithm__tools_on=qc_rec_local.config__algorithm__tools_on, 
            config__algorithm__variant_regions=qc_rec_local.config__algorithm__variant_regions, 
            align_bam=qc_rec_local.align_bam, 
            config__algorithm__variant_regions_merged=qc_rec_local.config__algorithm__variant_regions_merged, 
            config__algorithm__coverage_merged=qc_rec_local.config__algorithm__coverage_merged
      }
  
    }


    call summarize_grading_vc {
        input: description=variantcall.vc_rec.description, 
          vrn_file=variantcall.vc_rec.vrn_file, 
          config__algorithm__validate=variantcall.vc_rec.config__algorithm__validate, 
          reference__fasta__base=variantcall.vc_rec.reference__fasta__base, 
          reference__rtg=variantcall.vc_rec.reference__rtg, 
          config__algorithm__variantcaller=variantcall.vc_rec.config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=variantcall.vc_rec.config__algorithm__coverage_interval, 
          metadata__batch=variantcall.vc_rec.metadata__batch, 
          metadata__phenotype=variantcall.vc_rec.metadata__phenotype, 
          reference__genome_context=variantcall.vc_rec.reference__genome_context, 
          config__algorithm__validate_regions=variantcall.vc_rec.config__algorithm__validate_regions, 
          genome_build=variantcall.vc_rec.genome_build, 
          config__algorithm__tools_off=variantcall.vc_rec.config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=variantcall.vc_rec.genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=variantcall.vc_rec.genome_resources__variation__cosmic, 
          analysis=variantcall.vc_rec.analysis, 
          config__algorithm__tools_on=variantcall.vc_rec.config__algorithm__tools_on, 
          config__algorithm__variant_regions=variantcall.vc_rec.config__algorithm__variant_regions, 
          align_bam=variantcall.vc_rec.align_bam, 
          regions__callable=variantcall.vc_rec.regions__callable, 
          config__algorithm__callable_regions=variantcall.vc_rec.config__algorithm__callable_regions, 
          validate__summary=variantcall.vc_rec.validate__summary, 
          validate__tp=variantcall.vc_rec.validate__tp, 
          validate__fp=variantcall.vc_rec.validate__fp, 
          validate__fn=variantcall.vc_rec.validate__fn
    }


    call multiqc_summary {
        input: description=qc_to_rec.qc_rec.description, 
          reference__fasta__base=qc_to_rec.qc_rec.reference__fasta__base, 
          config__algorithm__coverage_interval=qc_to_rec.qc_rec.config__algorithm__coverage_interval, 
          genome_build=qc_to_rec.qc_rec.genome_build, 
          config__algorithm__coverage=qc_to_rec.qc_rec.config__algorithm__coverage, 
          config__algorithm__tools_off=qc_to_rec.qc_rec.config__algorithm__tools_off, 
          config__algorithm__qc=qc_to_rec.qc_rec.config__algorithm__qc, 
          analysis=qc_to_rec.qc_rec.analysis, 
          config__algorithm__tools_on=qc_to_rec.qc_rec.config__algorithm__tools_on, 
          config__algorithm__variant_regions=qc_to_rec.qc_rec.config__algorithm__variant_regions, 
          align_bam=qc_to_rec.qc_rec.align_bam, 
          config__algorithm__variant_regions_merged=qc_to_rec.qc_rec.config__algorithm__variant_regions_merged, 
          config__algorithm__coverage_merged=qc_to_rec.qc_rec.config__algorithm__coverage_merged, 
          summary__qc=pipeline_summary.summary__qc, 
          summary__metrics=pipeline_summary.summary__metrics
    }


    scatter (config__algorithm__variant_regions_merged_local in prep_samples.config__algorithm__variant_regions_merged
             reference__fasta__base_local in reference__fasta__base
             description_local in description
             config__algorithm__variant_regions_orig_local in prep_samples.config__algorithm__variant_regions_orig
             config__algorithm__coverage_merged_local in prep_samples.config__algorithm__coverage_merged
             config__algorithm__variant_regions_local in prep_samples.config__algorithm__variant_regions
             config__algorithm__coverage_orig_local in prep_samples.config__algorithm__coverage_orig
             config__algorithm__recalibrate_local in config__algorithm__recalibrate
             config__algorithm__coverage_local in prep_samples.config__algorithm__coverage
             config__algorithm__coverage_interval_local in config__algorithm__coverage_interval
             align_bam_local in alignment.align_bam
             config__algorithm__seq2c_bed_ready_local in prep_samples.config__algorithm__seq2c_bed_ready) {
  
      call postprocess_alignment {
          input: align_bam=align_bam_local, 
            config__algorithm__coverage_interval=config__algorithm__coverage_interval_local, 
            config__algorithm__variant_regions=config__algorithm__variant_regions_local, 
            config__algorithm__variant_regions_merged=config__algorithm__variant_regions_merged_local, 
            config__algorithm__variant_regions_orig=config__algorithm__variant_regions_orig_local, 
            config__algorithm__coverage=config__algorithm__coverage_local, 
            config__algorithm__coverage_merged=config__algorithm__coverage_merged_local, 
            config__algorithm__coverage_orig=config__algorithm__coverage_orig_local, 
            config__algorithm__seq2c_bed_ready=config__algorithm__seq2c_bed_ready_local, 
            config__algorithm__recalibrate=config__algorithm__recalibrate_local, 
            reference__fasta__base=reference__fasta__base_local, 
            description=description_local
      }
  
    }


    scatter (files_local in files
             config__algorithm__align_split_size_local in config__algorithm__align_split_size
             config__algorithm__mark_duplicates_local in config__algorithm__mark_duplicates
             reference__fasta__base_local in reference__fasta__base
             description_local in description
             rgnames__lb_local in rgnames__lb
             rgnames__lane_local in rgnames__lane
             config__algorithm__aligner_local in config__algorithm__aligner
             rgnames__sample_local in rgnames__sample
             rgnames__pu_local in rgnames__pu
             reference__bwa__indexes_local in reference__bwa__indexes
             rgnames__pl_local in rgnames__pl
             rgnames__rg_local in rgnames__rg
             reference__snap__indexes_local in reference__snap__indexes) {
  
      call wf_alignment {
          input: files=files_local, 
            config__algorithm__align_split_size=config__algorithm__align_split_size_local, 
            config__algorithm__aligner=config__algorithm__aligner_local, 
            description=description_local, 
            reference__fasta__base=reference__fasta__base_local, 
            rgnames__pl=rgnames__pl_local, 
            rgnames__sample=rgnames__sample_local, 
            rgnames__pu=rgnames__pu_local, 
            rgnames__lane=rgnames__lane_local, 
            rgnames__rg=rgnames__rg_local, 
            rgnames__lb=rgnames__lb_local, 
            reference__bwa__indexes=reference__bwa__indexes_local, 
            reference__snap__indexes=reference__snap__indexes_local, 
            config__algorithm__mark_duplicates=config__algorithm__mark_duplicates_local
      }
  
    }


    scatter (batch_rec_local in batch_for_variantcall.batch_rec) {
  
      call wf_variantcall {
          input: description=batch_rec_local.description, 
            config__algorithm__validate=batch_rec_local.config__algorithm__validate, 
            reference__fasta__base=batch_rec_local.reference__fasta__base, 
            reference__rtg=batch_rec_local.reference__rtg, 
            config__algorithm__variantcaller=batch_rec_local.config__algorithm__variantcaller, 
            config__algorithm__coverage_interval=batch_rec_local.config__algorithm__coverage_interval, 
            metadata__batch=batch_rec_local.metadata__batch, 
            metadata__phenotype=batch_rec_local.metadata__phenotype, 
            reference__genome_context=batch_rec_local.reference__genome_context, 
            config__algorithm__validate_regions=batch_rec_local.config__algorithm__validate_regions, 
            genome_build=batch_rec_local.genome_build, 
            config__algorithm__tools_off=batch_rec_local.config__algorithm__tools_off, 
            genome_resources__variation__dbsnp=batch_rec_local.genome_resources__variation__dbsnp, 
            genome_resources__variation__cosmic=batch_rec_local.genome_resources__variation__cosmic, 
            analysis=batch_rec_local.analysis, 
            config__algorithm__tools_on=batch_rec_local.config__algorithm__tools_on, 
            config__algorithm__variant_regions=batch_rec_local.config__algorithm__variant_regions, 
            align_bam=batch_rec_local.align_bam, 
            regions__callable=batch_rec_local.regions__callable, 
            config__algorithm__callable_regions=batch_rec_local.config__algorithm__callable_regions
      }
  
    }

    
   output {
     alignment.align_bam
     multiqc_summary.summary__multiqc

}

task prep_samples {
    String sentinel-parallel
    String sentinel-outputs
    File config__algorithm__coverage
    File config__algorithm__variant_regions
    File reference__fasta__base
    String description

    command {
        bcbio_nextgen.py runfn prep_samples cwl \
        sentinel-parallel=${default='multi-parallel' sentinel-parallel} \
        sentinel-outputs=${default='["config__algorithm__variant_regions","config__algorithm__variant_regions_merged","config__algorithm__variant_regions_orig","config__algorithm__coverage","config__algorithm__coverage_merged","config__algorithm__coverage_orig","config__algorithm__seq2c_bed_ready"]' sentinel-outputs} \
        config__algorithm__coverage=${config__algorithm__coverage} \
        config__algorithm__variant_regions=${config__algorithm__variant_regions} \
        reference__fasta__base=${reference__fasta__base} \
        description=${description}
    }

    output {
        File config__algorithm__variant_regions = read_cwl_json('cwl.output.json', 'config__algorithm__variant_regions')
        File config__algorithm__variant_regions_merged = read_cwl_json('cwl.output.json', 'config__algorithm__variant_regions_merged')
        File config__algorithm__variant_regions_orig = read_cwl_json('cwl.output.json', 'config__algorithm__variant_regions_orig')
        File config__algorithm__coverage = read_cwl_json('cwl.output.json', 'config__algorithm__coverage')
        File config__algorithm__coverage_merged = read_cwl_json('cwl.output.json', 'config__algorithm__coverage_merged')
        File config__algorithm__coverage_orig = read_cwl_json('cwl.output.json', 'config__algorithm__coverage_orig')
        File config__algorithm__seq2c_bed_ready = read_cwl_json('cwl.output.json', 'config__algorithm__seq2c_bed_ready')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task qc_to_rec {
    String sentinel-parallel
    String sentinel-outputs
    Array[File] align_bam
    Array[String] analysis
    Array[File] reference__fasta__base
    Array[String] genome_build
    Array[String] config__algorithm__coverage_interval
    Array[Array[String]] config__algorithm__tools_on
    Array[Array[String]] config__algorithm__tools_off
    Array[Array[String]] config__algorithm__qc
    Array[File] config__algorithm__variant_regions
    Array[File] config__algorithm__variant_regions_merged
    Array[File] config__algorithm__coverage
    Array[File] config__algorithm__coverage_merged
    Array[String] description

    command {
        bcbio_nextgen.py runfn qc_to_rec cwl \
        sentinel-parallel=${default='multi-batch' sentinel-parallel} \
        sentinel-outputs=${default='["qc_rec"]' sentinel-outputs} \
        align_bam=${sep=';;' align_bam} \
        analysis=${sep=';;' analysis} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        config__algorithm__qc=${sep=';;' config__algorithm__qc} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] qc_rec = read_cwl_json('cwl.output.json', 'qc_rec')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task batch_for_variantcall {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] analysis
    Array[String] genome_build
    Array[File] align_bam
    Array[File] config__algorithm__callable_regions
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[File] regions__callable
    Array[Array[String]] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[File] config__algorithm__variant_regions
    Array[File] config__algorithm__validate
    Array[File] config__algorithm__validate_regions
    Array[Array[String]] config__algorithm__tools_on
    Array[Array[String]] config__algorithm__tools_off
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[Array[File]] reference__genome_context
    Array[File] genome_resources__variation__cosmic
    Array[File] genome_resources__variation__dbsnp
    Array[String] description

    command {
        bcbio_nextgen.py runfn batch_for_variantcall cwl \
        sentinel-parallel=${default='multi-batch' sentinel-parallel} \
        sentinel-outputs=${default='["batch_rec"]' sentinel-outputs} \
        analysis=${sep=';;' analysis} \
        genome_build=${sep=';;' genome_build} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        description=${sep=';;' description}
    }

    output {
        Array[Object] batch_rec = read_cwl_json('cwl.output.json', 'batch_rec')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task combine_sample_regions {
    String sentinel-parallel
    String sentinel-outputs
    Array[File] regions__callable
    Array[File] regions__nblock
    Array[Float] config__algorithm__nomap_split_size
    Array[Float] config__algorithm__nomap_split_targets
    Array[File] reference__fasta__base
    Array[String] description

    command {
        bcbio_nextgen.py runfn combine_sample_regions cwl \
        sentinel-parallel=${default='multi-combined' sentinel-parallel} \
        sentinel-outputs=${default='["config__algorithm__callable_regions","config__algorithm__non_callable_regions","config__algorithm__callable_count"]' sentinel-outputs} \
        regions__callable=${sep=';;' regions__callable} \
        regions__nblock=${sep=';;' regions__nblock} \
        config__algorithm__nomap_split_size=${sep=';;' config__algorithm__nomap_split_size} \
        config__algorithm__nomap_split_targets=${sep=';;' config__algorithm__nomap_split_targets} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        description=${sep=';;' description}
    }

    output {
        Array[File] config__algorithm__callable_regions = read_cwl_json('cwl.output.json', 'config__algorithm__callable_regions')
        Array[File] config__algorithm__non_callable_regions = read_cwl_json('cwl.output.json', 'config__algorithm__non_callable_regions')
        Array[Int] config__algorithm__callable_count = read_cwl_json('cwl.output.json', 'config__algorithm__callable_count')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task pipeline_summary {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] reference__fasta__base
    Array[String] config__algorithm__coverage_interval
    Array[String] genome_build
    Array[File] config__algorithm__coverage
    Array[Array[String]] config__algorithm__tools_off
    Array[Array[String]] config__algorithm__qc
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] config__algorithm__variant_regions_merged
    Array[File] config__algorithm__coverage_merged

    command {
        bcbio_nextgen.py runfn pipeline_summary cwl \
        sentinel-parallel=${default='multi-parallel' sentinel-parallel} \
        sentinel-outputs=${default='["summary__qc","summary__metrics"]' sentinel-outputs} \
        description=${sep=';;' description} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        config__algorithm__qc=${sep=';;' config__algorithm__qc} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged}
    }

    output {
        File summary__qc = read_cwl_json('cwl.output.json', 'summary__qc')
        String summary__metrics = read_cwl_json('cwl.output.json', 'summary__metrics')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task summarize_grading_vc {
    String sentinel-parallel
    String sentinel-outputs
    Array[Array[String]] description
    Array[Array[File]] vrn_file
    Array[Array[File]] config__algorithm__validate
    Array[Array[File]] reference__fasta__base
    Array[Array[File]] reference__rtg
    Array[Array[String]] config__algorithm__variantcaller
    Array[Array[String]] config__algorithm__coverage_interval
    Array[Array[String]] metadata__batch
    Array[Array[String]] metadata__phenotype
    Array[Array[Array[File]]] reference__genome_context
    Array[Array[File]] config__algorithm__validate_regions
    Array[Array[String]] genome_build
    Array[Array[Array[String]]] config__algorithm__tools_off
    Array[Array[File]] genome_resources__variation__dbsnp
    Array[Array[File]] genome_resources__variation__cosmic
    Array[Array[String]] analysis
    Array[Array[Array[String]]] config__algorithm__tools_on
    Array[Array[File]] config__algorithm__variant_regions
    Array[Array[File]] align_bam
    Array[Array[File]] regions__callable
    Array[Array[File]] config__algorithm__callable_regions
    Array[Array[File]] validate__summary
    Array[Array[File]] validate__tp
    Array[Array[File]] validate__fp
    Array[Array[File]] validate__fn

    command {
        bcbio_nextgen.py runfn summarize_grading_vc cwl \
        sentinel-parallel=${default='multi-combined' sentinel-parallel} \
        sentinel-outputs=${default='["validate__grading_summary","validate__grading_plots"]' sentinel-outputs} \
        description=${sep=';;' description} \
        vrn_file=${sep=';;' vrn_file} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        validate__summary=${sep=';;' validate__summary} \
        validate__tp=${sep=';;' validate__tp} \
        validate__fp=${sep=';;' validate__fp} \
        validate__fn=${sep=';;' validate__fn}
    }

    output {
        Array[File] validate__grading_summary = read_cwl_json('cwl.output.json', 'validate__grading_summary')
        Array[Array[File]] validate__grading_plots = read_cwl_json('cwl.output.json', 'validate__grading_plots')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task multiqc_summary {
    String sentinel-parallel
    String sentinel-outputs
    Array[Array[String]] description
    Array[Array[File]] reference__fasta__base
    Array[Array[String]] config__algorithm__coverage_interval
    Array[Array[String]] genome_build
    Array[Array[File]] config__algorithm__coverage
    Array[Array[Array[String]]] config__algorithm__tools_off
    Array[Array[Array[String]]] config__algorithm__qc
    Array[Array[String]] analysis
    Array[Array[Array[String]]] config__algorithm__tools_on
    Array[Array[File]] config__algorithm__variant_regions
    Array[Array[File]] align_bam
    Array[Array[File]] config__algorithm__variant_regions_merged
    Array[Array[File]] config__algorithm__coverage_merged
    Array[File] summary__qc
    Array[String] summary__metrics

    command {
        bcbio_nextgen.py runfn multiqc_summary cwl \
        sentinel-parallel=${default='multi-combined' sentinel-parallel} \
        sentinel-outputs=${default='["summary__multiqc"]' sentinel-outputs} \
        description=${sep=';;' description} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__coverage=${sep=';;' config__algorithm__coverage} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        config__algorithm__qc=${sep=';;' config__algorithm__qc} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        config__algorithm__variant_regions_merged=${sep=';;' config__algorithm__variant_regions_merged} \
        config__algorithm__coverage_merged=${sep=';;' config__algorithm__coverage_merged} \
        summary__qc=${sep=';;' summary__qc} \
        summary__metrics=${sep=';;' summary__metrics}
    }

    output {
        Array[File] summary__multiqc = read_cwl_json('cwl.output.json', 'summary__multiqc')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task postprocess_alignment {
    String sentinel-parallel
    String sentinel-outputs
    File align_bam
    String config__algorithm__coverage_interval
    File config__algorithm__variant_regions
    File config__algorithm__variant_regions_merged
    File config__algorithm__variant_regions_orig
    File config__algorithm__coverage
    File config__algorithm__coverage_merged
    File config__algorithm__coverage_orig
    File config__algorithm__seq2c_bed_ready
    String config__algorithm__recalibrate
    File reference__fasta__base
    String description

    command {
        bcbio_nextgen.py runfn postprocess_alignment cwl \
        sentinel-parallel=${default='multi-parallel' sentinel-parallel} \
        sentinel-outputs=${default='["config__algorithm__coverage_interval","config__algorithm__variant_regions","config__algorithm__variant_regions_merged","config__algorithm__variant_regions_orig","config__algorithm__coverage","config__algorithm__coverage_merged","config__algorithm__coverage_orig","config__algorithm__seq2c_bed_ready","regions__callable","regions__sample_callable","regions__nblock","regions__highdepth"]' sentinel-outputs} \
        align_bam=${align_bam} \
        config__algorithm__coverage_interval=${config__algorithm__coverage_interval} \
        config__algorithm__variant_regions=${config__algorithm__variant_regions} \
        config__algorithm__variant_regions_merged=${config__algorithm__variant_regions_merged} \
        config__algorithm__variant_regions_orig=${config__algorithm__variant_regions_orig} \
        config__algorithm__coverage=${config__algorithm__coverage} \
        config__algorithm__coverage_merged=${config__algorithm__coverage_merged} \
        config__algorithm__coverage_orig=${config__algorithm__coverage_orig} \
        config__algorithm__seq2c_bed_ready=${config__algorithm__seq2c_bed_ready} \
        config__algorithm__recalibrate=${config__algorithm__recalibrate} \
        reference__fasta__base=${reference__fasta__base} \
        description=${description}
    }

    output {
        String config__algorithm__coverage_interval = read_cwl_json('cwl.output.json', 'config__algorithm__coverage_interval')
        File config__algorithm__variant_regions = read_cwl_json('cwl.output.json', 'config__algorithm__variant_regions')
        File config__algorithm__variant_regions_merged = read_cwl_json('cwl.output.json', 'config__algorithm__variant_regions_merged')
        File config__algorithm__variant_regions_orig = read_cwl_json('cwl.output.json', 'config__algorithm__variant_regions_orig')
        File config__algorithm__coverage = read_cwl_json('cwl.output.json', 'config__algorithm__coverage')
        File config__algorithm__coverage_merged = read_cwl_json('cwl.output.json', 'config__algorithm__coverage_merged')
        File config__algorithm__coverage_orig = read_cwl_json('cwl.output.json', 'config__algorithm__coverage_orig')
        File config__algorithm__seq2c_bed_ready = read_cwl_json('cwl.output.json', 'config__algorithm__seq2c_bed_ready')
        File regions__callable = read_cwl_json('cwl.output.json', 'regions__callable')
        File regions__sample_callable = read_cwl_json('cwl.output.json', 'regions__sample_callable')
        File regions__nblock = read_cwl_json('cwl.output.json', 'regions__nblock')
        File regions__highdepth = read_cwl_json('cwl.output.json', 'regions__highdepth')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


workflow wf_alignment {
    Array[File] files
    Float config__algorithm__align_split_size
    String config__algorithm__aligner
    String description
    File reference__fasta__base
    String rgnames__pl
    String rgnames__sample
    String rgnames__pu
    String rgnames__lane
    String rgnames__rg
    String rgnames__lb
    File reference__bwa__indexes
    File reference__snap__indexes
    String config__algorithm__mark_duplicates
    
    scatter (files_local in prep_align_inputs.files
             config__algorithm__quality_format_local in prep_align_inputs.config__algorithm__quality_format
             align_split_local in prep_align_inputs.align_split) {
  
      call process_alignment {
          input: files=files_local, 
            reference__fasta__base=reference__fasta__base, 
            align_split=align_split_local, 
            rgnames__pl=rgnames__pl, 
            rgnames__sample=rgnames__sample, 
            rgnames__pu=rgnames__pu, 
            rgnames__lane=rgnames__lane, 
            rgnames__rg=rgnames__rg, 
            rgnames__lb=rgnames__lb, 
            reference__bwa__indexes=reference__bwa__indexes, 
            reference__snap__indexes=reference__snap__indexes, 
            config__algorithm__aligner=config__algorithm__aligner, 
            config__algorithm__mark_duplicates=config__algorithm__mark_duplicates, 
            config__algorithm__quality_format=config__algorithm__quality_format_local, 
            description=description
      }
  
    }


    call prep_align_inputs {
        input: files=files, 
          config__algorithm__align_split_size=config__algorithm__align_split_size, 
          config__algorithm__aligner=config__algorithm__aligner, 
          description=description
    }


    call merge_split_alignments {
        input: work_bam=process_alignment.work_bam, 
          align_bam=process_alignment.align_bam, 
          work_bam_plus__disc=process_alignment.work_bam_plus__disc, 
          work_bam_plus__sr=process_alignment.work_bam_plus__sr, 
          hla__fastq=process_alignment.hla__fastq, 
          description=description
    }

    
   output {
     merge_split_alignments.align_bam
     merge_split_alignments.work_bam_plus__disc
     merge_split_alignments.work_bam_plus__sr
     merge_split_alignments.hla__fastq

}

task process_alignment {
    String sentinel-parallel
    String sentinel-outputs
    Array[File] files
    File reference__fasta__base
    String align_split
    String rgnames__pl
    String rgnames__sample
    String rgnames__pu
    String rgnames__lane
    String rgnames__rg
    String rgnames__lb
    File reference__bwa__indexes
    File reference__snap__indexes
    String config__algorithm__aligner
    String config__algorithm__mark_duplicates
    String config__algorithm__quality_format
    String description

    command {
        bcbio_nextgen.py runfn process_alignment cwl \
        sentinel-parallel=${default='single-parallel' sentinel-parallel} \
        sentinel-outputs=${default='["work_bam","align_bam","hla__fastq","work_bam_plus__disc","work_bam_plus__sr"]' sentinel-outputs} \
        files=${sep=';;' files} \
        reference__fasta__base=${reference__fasta__base} \
        align_split=${align_split} \
        rgnames__pl=${rgnames__pl} \
        rgnames__sample=${rgnames__sample} \
        rgnames__pu=${rgnames__pu} \
        rgnames__lane=${rgnames__lane} \
        rgnames__rg=${rgnames__rg} \
        rgnames__lb=${rgnames__lb} \
        reference__bwa__indexes=${reference__bwa__indexes} \
        reference__snap__indexes=${reference__snap__indexes} \
        config__algorithm__aligner=${config__algorithm__aligner} \
        config__algorithm__mark_duplicates=${config__algorithm__mark_duplicates} \
        config__algorithm__quality_format=${config__algorithm__quality_format} \
        description=${description}
    }

    output {
        File work_bam = read_cwl_json('cwl.output.json', 'work_bam')
        File align_bam = read_cwl_json('cwl.output.json', 'align_bam')
        File hla__fastq = read_cwl_json('cwl.output.json', 'hla__fastq')
        File work_bam_plus__disc = read_cwl_json('cwl.output.json', 'work_bam_plus__disc')
        File work_bam_plus__sr = read_cwl_json('cwl.output.json', 'work_bam_plus__sr')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
        disks: 'local-disk 4 HDD'
    }
}


task prep_align_inputs {
    String sentinel-parallel
    String sentinel-outputs
    Array[File] files
    Float config__algorithm__align_split_size
    String config__algorithm__aligner
    String description

    command {
        bcbio_nextgen.py runfn prep_align_inputs cwl \
        sentinel-parallel=${default='single-split' sentinel-parallel} \
        sentinel-outputs=${default='["files","config__algorithm__quality_format","align_split"]' sentinel-outputs} \
        files=${sep=';;' files} \
        config__algorithm__align_split_size=${config__algorithm__align_split_size} \
        config__algorithm__aligner=${config__algorithm__aligner} \
        description=${description}
    }

    output {
        Array[Array[File]] files = read_cwl_json('cwl.output.json', 'files')
        Array[String] config__algorithm__quality_format = read_cwl_json('cwl.output.json', 'config__algorithm__quality_format')
        Array[String] align_split = read_cwl_json('cwl.output.json', 'align_split')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
        disks: 'local-disk 4 HDD'
    }
}


task merge_split_alignments {
    String sentinel-parallel
    String sentinel-outputs
    Array[File] work_bam
    Array[File] align_bam
    Array[File] work_bam_plus__disc
    Array[File] work_bam_plus__sr
    Array[File] hla__fastq
    String description

    command {
        bcbio_nextgen.py runfn merge_split_alignments cwl \
        sentinel-parallel=${default='single-merge' sentinel-parallel} \
        sentinel-outputs=${default='["align_bam","work_bam_plus__disc","work_bam_plus__sr","hla__fastq"]' sentinel-outputs} \
        work_bam=${sep=';;' work_bam} \
        align_bam=${sep=';;' align_bam} \
        work_bam_plus__disc=${sep=';;' work_bam_plus__disc} \
        work_bam_plus__sr=${sep=';;' work_bam_plus__sr} \
        hla__fastq=${sep=';;' hla__fastq} \
        description=${description}
    }

    output {
        File align_bam = read_cwl_json('cwl.output.json', 'align_bam')
        File work_bam_plus__disc = read_cwl_json('cwl.output.json', 'work_bam_plus__disc')
        File work_bam_plus__sr = read_cwl_json('cwl.output.json', 'work_bam_plus__sr')
        File hla__fastq = read_cwl_json('cwl.output.json', 'hla__fastq')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
        disks: 'local-disk 9 HDD'
    }
}



workflow wf_variantcall {
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    
    call get_parallel_regions {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          reference__genome_context=reference__genome_context, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions
    }


    call concat_batch_variantcalls {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          reference__genome_context=reference__genome_context, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          region=variantcall_batch_region.region, 
          vrn_file_region=variantcall_batch_region.vrn_file_region
    }


    call compare_to_rm {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          reference__genome_context=reference__genome_context, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          vrn_file=postprocess_variants.vrn_file
    }


    scatter (region_local in get_parallel_regions.region) {
  
      call variantcall_batch_region {
          input: description=description, 
            config__algorithm__validate=config__algorithm__validate, 
            reference__fasta__base=reference__fasta__base, 
            reference__rtg=reference__rtg, 
            config__algorithm__variantcaller=config__algorithm__variantcaller, 
            config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
            metadata__batch=metadata__batch, 
            metadata__phenotype=metadata__phenotype, 
            reference__genome_context=reference__genome_context, 
            config__algorithm__validate_regions=config__algorithm__validate_regions, 
            genome_build=genome_build, 
            config__algorithm__tools_off=config__algorithm__tools_off, 
            genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
            genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
            analysis=analysis, 
            config__algorithm__tools_on=config__algorithm__tools_on, 
            config__algorithm__variant_regions=config__algorithm__variant_regions, 
            align_bam=align_bam, 
            regions__callable=regions__callable, 
            config__algorithm__callable_regions=config__algorithm__callable_regions, 
            region=region_local
      }
  
    }


    call vc_output_record {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          reference__genome_context=reference__genome_context, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          vrn_file=postprocess_variants.vrn_file, 
          validate__summary=compare_to_rm.validate__summary, 
          validate__tp=compare_to_rm.validate__tp, 
          validate__fp=compare_to_rm.validate__fp, 
          validate__fn=compare_to_rm.validate__fn
    }


    call postprocess_variants {
        input: description=description, 
          config__algorithm__validate=config__algorithm__validate, 
          reference__fasta__base=reference__fasta__base, 
          reference__rtg=reference__rtg, 
          config__algorithm__variantcaller=config__algorithm__variantcaller, 
          config__algorithm__coverage_interval=config__algorithm__coverage_interval, 
          metadata__batch=metadata__batch, 
          metadata__phenotype=metadata__phenotype, 
          reference__genome_context=reference__genome_context, 
          config__algorithm__validate_regions=config__algorithm__validate_regions, 
          genome_build=genome_build, 
          config__algorithm__tools_off=config__algorithm__tools_off, 
          genome_resources__variation__dbsnp=genome_resources__variation__dbsnp, 
          genome_resources__variation__cosmic=genome_resources__variation__cosmic, 
          analysis=analysis, 
          config__algorithm__tools_on=config__algorithm__tools_on, 
          config__algorithm__variant_regions=config__algorithm__variant_regions, 
          align_bam=align_bam, 
          regions__callable=regions__callable, 
          config__algorithm__callable_regions=config__algorithm__callable_regions, 
          vrn_file=concat_batch_variantcalls.vrn_file
    }

    
   output {
     vc_output_record.vc_rec
     compare_to_rm.validate__tp
     compare_to_rm.validate__fp
     compare_to_rm.validate__fn

}

task get_parallel_regions {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions

    command {
        bcbio_nextgen.py runfn get_parallel_regions cwl \
        sentinel-parallel=${default='batch-split' sentinel-parallel} \
        sentinel-outputs=${default='["region"]' sentinel-outputs} \
        description=${sep=';;' description} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions}
    }

    output {
        Array[String] region = read_cwl_json('cwl.output.json', 'region')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task concat_batch_variantcalls {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    Array[String] region
    Array[File] vrn_file_region

    command {
        bcbio_nextgen.py runfn concat_batch_variantcalls cwl \
        sentinel-parallel=${default='batch-merge' sentinel-parallel} \
        sentinel-outputs=${default='["vrn_file"]' sentinel-outputs} \
        description=${sep=';;' description} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        region=${sep=';;' region} \
        vrn_file_region=${sep=';;' vrn_file_region}
    }

    output {
        File vrn_file = read_cwl_json('cwl.output.json', 'vrn_file')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task compare_to_rm {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    File vrn_file

    command {
        bcbio_nextgen.py runfn compare_to_rm cwl \
        sentinel-parallel=${default='batch-single' sentinel-parallel} \
        sentinel-outputs=${default='["validate__summary","validate__tp","validate__fp","validate__fn"]' sentinel-outputs} \
        description=${sep=';;' description} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        vrn_file=${vrn_file}
    }

    output {
        File validate__summary = read_cwl_json('cwl.output.json', 'validate__summary')
        File validate__tp = read_cwl_json('cwl.output.json', 'validate__tp')
        File validate__fp = read_cwl_json('cwl.output.json', 'validate__fp')
        File validate__fn = read_cwl_json('cwl.output.json', 'validate__fn')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task variantcall_batch_region {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    String region

    command {
        bcbio_nextgen.py runfn variantcall_batch_region cwl \
        sentinel-parallel=${default='batch-parallel' sentinel-parallel} \
        sentinel-outputs=${default='["vrn_file_region","region"]' sentinel-outputs} \
        description=${sep=';;' description} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        region=${region}
    }

    output {
        File vrn_file_region = read_cwl_json('cwl.output.json', 'vrn_file_region')
        String region = read_cwl_json('cwl.output.json', 'region')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task vc_output_record {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    File vrn_file
    File validate__summary
    File validate__tp
    File validate__fp
    File validate__fn

    command {
        bcbio_nextgen.py runfn vc_output_record cwl \
        sentinel-parallel=${default='batch-single' sentinel-parallel} \
        sentinel-outputs=${default='["vc_rec"]' sentinel-outputs} \
        description=${sep=';;' description} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        vrn_file=${vrn_file} \
        validate__summary=${validate__summary} \
        validate__tp=${validate__tp} \
        validate__fp=${validate__fp} \
        validate__fn=${validate__fn}
    }

    output {
        Object vc_rec = read_cwl_json('cwl.output.json', 'vc_rec')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


task postprocess_variants {
    String sentinel-parallel
    String sentinel-outputs
    Array[String] description
    Array[File] config__algorithm__validate
    Array[File] reference__fasta__base
    Array[File] reference__rtg
    Array[String] config__algorithm__variantcaller
    Array[String] config__algorithm__coverage_interval
    Array[String] metadata__batch
    Array[String] metadata__phenotype
    Array[Array[File]] reference__genome_context
    Array[File] config__algorithm__validate_regions
    Array[String] genome_build
    Array[Array[String]] config__algorithm__tools_off
    Array[File] genome_resources__variation__dbsnp
    Array[File] genome_resources__variation__cosmic
    Array[String] analysis
    Array[Array[String]] config__algorithm__tools_on
    Array[File] config__algorithm__variant_regions
    Array[File] align_bam
    Array[File] regions__callable
    Array[File] config__algorithm__callable_regions
    File vrn_file

    command {
        bcbio_nextgen.py runfn postprocess_variants cwl \
        sentinel-parallel=${default='batch-single' sentinel-parallel} \
        sentinel-outputs=${default='["vrn_file"]' sentinel-outputs} \
        description=${sep=';;' description} \
        config__algorithm__validate=${sep=';;' config__algorithm__validate} \
        reference__fasta__base=${sep=';;' reference__fasta__base} \
        reference__rtg=${sep=';;' reference__rtg} \
        config__algorithm__variantcaller=${sep=';;' config__algorithm__variantcaller} \
        config__algorithm__coverage_interval=${sep=';;' config__algorithm__coverage_interval} \
        metadata__batch=${sep=';;' metadata__batch} \
        metadata__phenotype=${sep=';;' metadata__phenotype} \
        reference__genome_context=${sep=';;' reference__genome_context} \
        config__algorithm__validate_regions=${sep=';;' config__algorithm__validate_regions} \
        genome_build=${sep=';;' genome_build} \
        config__algorithm__tools_off=${sep=';;' config__algorithm__tools_off} \
        genome_resources__variation__dbsnp=${sep=';;' genome_resources__variation__dbsnp} \
        genome_resources__variation__cosmic=${sep=';;' genome_resources__variation__cosmic} \
        analysis=${sep=';;' analysis} \
        config__algorithm__tools_on=${sep=';;' config__algorithm__tools_on} \
        config__algorithm__variant_regions=${sep=';;' config__algorithm__variant_regions} \
        align_bam=${sep=';;' align_bam} \
        regions__callable=${sep=';;' regions__callable} \
        config__algorithm__callable_regions=${sep=';;' config__algorithm__callable_regions} \
        vrn_file=${vrn_file}
    }

    output {
        File vrn_file = read_cwl_json('cwl.output.json', 'vrn_file')
    }

    runtime {
        docker: 'bcbio/bcbio'
        cpu: '2'
        memory: '4096 MB'
    }
}


