
process summarize_grading_vc {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    var variantcall.vc_rec.description as description
    file variantcall.vc_rec.vrn_file as vrn_file
    file variantcall.vc_rec.config__algorithm__validate as config__algorithm__validate
    file variantcall.vc_rec.reference__fasta__base as reference__fasta__base
    file variantcall.vc_rec.reference__rtg as reference__rtg
    var variantcall.vc_rec.config__algorithm__variantcaller as config__algorithm__variantcaller
    var variantcall.vc_rec.config__algorithm__coverage_interval as config__algorithm__coverage_interval
    var variantcall.vc_rec.metadata__batch as metadata__batch
    file variantcall.vc_rec.reference__genome_context as reference__genome_context
    file variantcall.vc_rec.config__algorithm__validate_regions as config__algorithm__validate_regions
    var variantcall.vc_rec.genome_build as genome_build
    var variantcall.vc_rec.metadata__phenotype as metadata__phenotype
    var variantcall.vc_rec.config__algorithm__tools_off as config__algorithm__tools_off
    file variantcall.vc_rec.genome_resources__variation__dbsnp as genome_resources__variation__dbsnp
    file variantcall.vc_rec.genome_resources__variation__cosmic as genome_resources__variation__cosmic
    var variantcall.vc_rec.analysis as analysis
    var variantcall.vc_rec.config__algorithm__tools_on as config__algorithm__tools_on
    file variantcall.vc_rec.config__algorithm__variant_regions as config__algorithm__variant_regions
    file variantcall.vc_rec.align_bam as align_bam
    file variantcall.vc_rec.regions__callable as regions__callable
    file variantcall.vc_rec.config__algorithm__callable_regions as config__algorithm__callable_regions
    file variantcall.vc_rec.validate__summary as validate__summary
    file variantcall.vc_rec.validate__tp as validate__tp
    file variantcall.vc_rec.validate__fp as validate__fp
    file variantcall.vc_rec.validate__fn as validate__fn
  output:
    file validate__grading_summary
    file validate__grading_plots
"""
bcbio_nextgen.py runfn summarize_grading_vc cwl sentinel-parallel='multi-combined' sentinel-outputs='["validate__grading_summary","validate__grading_plots"]' description=$description vrn_file=$vrn_file config__algorithm__validate=$config__algorithm__validate reference__fasta__base=$reference__fasta__base reference__rtg=$reference__rtg config__algorithm__variantcaller=$config__algorithm__variantcaller config__algorithm__coverage_interval=$config__algorithm__coverage_interval metadata__batch=$metadata__batch reference__genome_context=$reference__genome_context config__algorithm__validate_regions=$config__algorithm__validate_regions genome_build=$genome_build metadata__phenotype=$metadata__phenotype config__algorithm__tools_off=$config__algorithm__tools_off genome_resources__variation__dbsnp=$genome_resources__variation__dbsnp genome_resources__variation__cosmic=$genome_resources__variation__cosmic analysis=$analysis config__algorithm__tools_on=$config__algorithm__tools_on config__algorithm__variant_regions=$config__algorithm__variant_regions align_bam=$align_bam regions__callable=$regions__callable config__algorithm__callable_regions=$config__algorithm__callable_regions validate__summary=$validate__summary validate__tp=$validate__tp validate__fp=$validate__fp validate__fn=$validate__fn
"""
}

process multiqc_summary {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    var genome_build
    file pipeline_summary.summary__qc__samtools as summary__qc__samtools
    file pipeline_summary.summary__qc__fastqc as summary__qc__fastqc
    file reference__fasta__base
    var postprocess_alignment.config__algorithm__coverage_interval as config__algorithm__coverage_interval
    var description
  output:
    file summary__multiqc
"""
bcbio_nextgen.py runfn multiqc_summary cwl sentinel-parallel='multi-combined' sentinel-outputs='["summary__multiqc"]' genome_build=$genome_build summary__qc__samtools=$summary__qc__samtools summary__qc__fastqc=$summary__qc__fastqc reference__fasta__base=$reference__fasta__base config__algorithm__coverage_interval=$config__algorithm__coverage_interval description=$description
"""
}

process prep_samples {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    file config__algorithm__variant_regions
    file reference__fasta__base
    var description
  output:
    file config__algorithm__variant_regions
    file config__algorithm__variant_regions_merged
    file config__algorithm__variant_regions_orig
    file config__algorithm__seq2c_bed_ready
"""
bcbio_nextgen.py runfn prep_samples cwl sentinel-parallel='multi-parallel' sentinel-outputs='["config__algorithm__variant_regions","config__algorithm__variant_regions_merged","config__algorithm__variant_regions_orig","config__algorithm__seq2c_bed_ready"]' config__algorithm__variant_regions=$config__algorithm__variant_regions reference__fasta__base=$reference__fasta__base description=$description
"""
}

process postprocess_alignment {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    file alignment.align_bam as align_bam
    file prep_samples.config__algorithm__variant_regions as config__algorithm__variant_regions
    var config__algorithm__coverage_interval
    file prep_samples.config__algorithm__variant_regions_merged as config__algorithm__variant_regions_merged
    file prep_samples.config__algorithm__variant_regions_orig as config__algorithm__variant_regions_orig
    file prep_samples.config__algorithm__seq2c_bed_ready as config__algorithm__seq2c_bed_ready
    var config__algorithm__recalibrate
    file reference__fasta__base
    var description
  output:
    var config__algorithm__coverage_interval
    file config__algorithm__variant_regions
    file config__algorithm__variant_regions_merged
    file config__algorithm__variant_regions_orig
    file config__algorithm__seq2c_bed_ready
    file regions__callable
    file regions__sample_callable
    file regions__nblock
    file regions__highdepth
"""
bcbio_nextgen.py runfn postprocess_alignment cwl sentinel-parallel='multi-parallel' sentinel-outputs='["config__algorithm__coverage_interval","config__algorithm__variant_regions","config__algorithm__variant_regions_merged","config__algorithm__variant_regions_orig","config__algorithm__seq2c_bed_ready","regions__callable","regions__sample_callable","regions__nblock","regions__highdepth"]' align_bam=$align_bam config__algorithm__variant_regions=$config__algorithm__variant_regions config__algorithm__coverage_interval=$config__algorithm__coverage_interval config__algorithm__variant_regions_merged=$config__algorithm__variant_regions_merged config__algorithm__variant_regions_orig=$config__algorithm__variant_regions_orig config__algorithm__seq2c_bed_ready=$config__algorithm__seq2c_bed_ready config__algorithm__recalibrate=$config__algorithm__recalibrate reference__fasta__base=$reference__fasta__base description=$description
"""
}

process batch_for_variantcall {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    var analysis
    var genome_build
    file alignment.align_bam as align_bam
    file combine_sample_regions.config__algorithm__callable_regions as config__algorithm__callable_regions
    var metadata__batch
    var metadata__phenotype
    file postprocess_alignment.regions__callable as regions__callable
    var config__algorithm__variantcaller
    var postprocess_alignment.config__algorithm__coverage_interval as config__algorithm__coverage_interval
    file postprocess_alignment.config__algorithm__variant_regions as config__algorithm__variant_regions
    file config__algorithm__validate
    file config__algorithm__validate_regions
    var config__algorithm__tools_on
    var config__algorithm__tools_off
    file reference__fasta__base
    file reference__rtg
    file reference__genome_context
    file genome_resources__variation__cosmic
    file genome_resources__variation__dbsnp
    var description
  output:
    var batch_rec
"""
bcbio_nextgen.py runfn batch_for_variantcall cwl sentinel-parallel='multi-batch' sentinel-outputs='["batch_rec"]' analysis=$analysis genome_build=$genome_build align_bam=$align_bam config__algorithm__callable_regions=$config__algorithm__callable_regions metadata__batch=$metadata__batch metadata__phenotype=$metadata__phenotype regions__callable=$regions__callable config__algorithm__variantcaller=$config__algorithm__variantcaller config__algorithm__coverage_interval=$config__algorithm__coverage_interval config__algorithm__variant_regions=$config__algorithm__variant_regions config__algorithm__validate=$config__algorithm__validate config__algorithm__validate_regions=$config__algorithm__validate_regions config__algorithm__tools_on=$config__algorithm__tools_on config__algorithm__tools_off=$config__algorithm__tools_off reference__fasta__base=$reference__fasta__base reference__rtg=$reference__rtg reference__genome_context=$reference__genome_context genome_resources__variation__cosmic=$genome_resources__variation__cosmic genome_resources__variation__dbsnp=$genome_resources__variation__dbsnp description=$description
"""
}

process combine_sample_regions {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    file postprocess_alignment.regions__callable as regions__callable
    file postprocess_alignment.regions__nblock as regions__nblock
    var config__algorithm__nomap_split_size
    var config__algorithm__nomap_split_targets
    file reference__fasta__base
    var description
  output:
    file config__algorithm__callable_regions
    file config__algorithm__non_callable_regions
    var config__algorithm__callable_count
"""
bcbio_nextgen.py runfn combine_sample_regions cwl sentinel-parallel='multi-combined' sentinel-outputs='["config__algorithm__callable_regions","config__algorithm__non_callable_regions","config__algorithm__callable_count"]' regions__callable=$regions__callable regions__nblock=$regions__nblock config__algorithm__nomap_split_size=$config__algorithm__nomap_split_size config__algorithm__nomap_split_targets=$config__algorithm__nomap_split_targets reference__fasta__base=$reference__fasta__base description=$description
"""
}

process pipeline_summary {
  container 'bcbio/bcbio'
  cpus 4
  memory '4096 MB'
  input:
    file alignment.align_bam as align_bam
    var analysis
    file reference__fasta__base
    var config__algorithm__qc
    file postprocess_alignment.config__algorithm__variant_regions as config__algorithm__variant_regions
    var description
  output:
    file summary__qc__samtools
    file summary__qc__fastqc
    file coverage__all
    file coverage__problems
"""
bcbio_nextgen.py runfn pipeline_summary cwl sentinel-parallel='multi-parallel' sentinel-outputs='["summary__qc__samtools","summary__qc__fastqc","coverage__all","coverage__problems"]' align_bam=$align_bam analysis=$analysis reference__fasta__base=$reference__fasta__base config__algorithm__qc=$config__algorithm__qc config__algorithm__variant_regions=$config__algorithm__variant_regions description=$description
"""
}
