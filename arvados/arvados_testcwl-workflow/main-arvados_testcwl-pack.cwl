{
    "cwlVersion": "v1.0", 
    "$graph": [
        {
            "class": "Workflow", 
            "hints": [], 
            "inputs": [
                {
                    "id": "#main/config__algorithm__align_split_size", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/files", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__trim_reads", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__vcfanno", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__variantcaller", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__adapters", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__snap__indexes", 
                    "type": {
                        "items": [
                            "null", 
                            "File"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__1000g", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__coverage_interval", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__rnaseq__gene_bed", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__train_hapmap", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__lb", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__clinvar", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__esp", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__rg", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/metadata__batch", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__lane", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__lcr", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__min_allele_fraction", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__nomap_split_targets", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__bwa__indexes", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/vrn_file", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__twobit", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__genome_context", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__bam_clean", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__nomap_split_size", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__validate", 
                    "type": {
                        "items": [
                            "null", 
                            "File"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__snpeff__hg19", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__validate_regions", 
                    "type": {
                        "items": [
                            "null", 
                            "File"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__aligner", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__pl", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_build", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__pu", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__exac", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__recalibrate", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/metadata__phenotype", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__aliases__human", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__tools_off", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__dbsnp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__mark_duplicates", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__polyx", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__encode_blacklist", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__cosmic", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__ensemble", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__qc", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/analysis", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/rgnames__sample", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__tools_on", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__effects", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__variant_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__aliases__ensembl", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/config__algorithm__exclude_regions", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/reference__rtg", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__variation__train_indels", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/genome_resources__aliases__snpeff", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#main/rgnames__sample_out", 
                    "outputSource": "#main/prep_samples/rgnames__sample", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/align_bam", 
                    "outputSource": "#main/postprocess_alignment/align_bam", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/regions__sample_callable", 
                    "outputSource": "#main/postprocess_alignment/regions__sample_callable", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/validate__grading_summary", 
                    "outputSource": "#main/summarize_vc/validate__grading_summary", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/variants__calls", 
                    "outputSource": "#main/summarize_vc/variants__calls", 
                    "type": {
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/variants__gvcf", 
                    "outputSource": "#main/summarize_vc/variants__gvcf", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": [
                                    "File", 
                                    "null"
                                ], 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#main/summary__multiqc", 
                    "outputSource": "#main/multiqc_summary/summary__multiqc", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "EnvVarRequirement", 
                    "envDef": [
                        {
                            "envName": "MPLCONFIGDIR", 
                            "envValue": "."
                        }
                    ]
                }, 
                {
                    "class": "ScatterFeatureRequirement"
                }, 
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ], 
            "steps": [
                {
                    "id": "#main/alignment_to_rec", 
                    "in": [
                        {
                            "id": "#main/alignment_to_rec/files", 
                            "source": "#main/files"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/analysis", 
                            "source": "#main/analysis"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__align_split_size", 
                            "source": "#main/config__algorithm__align_split_size"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__pl", 
                            "source": "#main/rgnames__pl"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__sample", 
                            "source": "#main/rgnames__sample"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__pu", 
                            "source": "#main/rgnames__pu"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__lane", 
                            "source": "#main/rgnames__lane"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__rg", 
                            "source": "#main/rgnames__rg"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/rgnames__lb", 
                            "source": "#main/rgnames__lb"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/reference__snap__indexes", 
                            "source": "#main/reference__snap__indexes"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/reference__bwa__indexes", 
                            "source": "#main/reference__bwa__indexes"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__aligner", 
                            "source": "#main/config__algorithm__aligner"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__trim_reads", 
                            "source": "#main/config__algorithm__trim_reads"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__adapters", 
                            "source": "#main/config__algorithm__adapters"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__bam_clean", 
                            "source": "#main/config__algorithm__bam_clean"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/config__algorithm__mark_duplicates", 
                            "source": "#main/config__algorithm__mark_duplicates"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/resources", 
                            "source": "#main/resources"
                        }, 
                        {
                            "id": "#main/alignment_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/alignment_to_rec/alignment_rec"
                        }
                    ], 
                    "run": "#alignment_to_rec.cwl"
                }, 
                {
                    "id": "#main/alignment", 
                    "in": [
                        {
                            "id": "#main/alignment/alignment_rec", 
                            "source": "#main/alignment_to_rec/alignment_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/alignment/align_bam"
                        }, 
                        {
                            "id": "#main/alignment/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#main/alignment/work_bam_plus__sr"
                        }, 
                        {
                            "id": "#main/alignment/hla__fastq"
                        }
                    ], 
                    "run": "#wf-alignment.cwl", 
                    "scatter": [
                        "#main/alignment/alignment_rec"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/prep_samples_to_rec", 
                    "in": [
                        {
                            "id": "#main/prep_samples_to_rec/rgnames__sample", 
                            "source": "#main/rgnames__sample"
                        }, 
                        {
                            "id": "#main/prep_samples_to_rec/config__algorithm__variant_regions", 
                            "source": "#main/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/prep_samples_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/prep_samples_to_rec/resources", 
                            "source": "#main/resources"
                        }, 
                        {
                            "id": "#main/prep_samples_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/prep_samples_to_rec/prep_samples_rec"
                        }
                    ], 
                    "run": "#prep_samples_to_rec.cwl"
                }, 
                {
                    "id": "#main/prep_samples", 
                    "in": [
                        {
                            "id": "#main/prep_samples/prep_samples_rec", 
                            "source": "#main/prep_samples_to_rec/prep_samples_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/prep_samples/rgnames__sample"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__variant_regions_orig"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__coverage_orig"
                        }, 
                        {
                            "id": "#main/prep_samples/config__algorithm__seq2c_bed_ready"
                        }
                    ], 
                    "run": "#prep_samples.cwl", 
                    "scatter": [
                        "#main/prep_samples/prep_samples_rec"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/postprocess_alignment_to_rec", 
                    "in": [
                        {
                            "id": "#main/postprocess_alignment_to_rec/align_bam", 
                            "source": "#main/alignment/align_bam"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage_interval", 
                            "source": "#main/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__exclude_regions", 
                            "source": "#main/config__algorithm__exclude_regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__variant_regions", 
                            "source": "#main/prep_samples/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__variant_regions_merged", 
                            "source": "#main/prep_samples/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__variant_regions_orig", 
                            "source": "#main/prep_samples/config__algorithm__variant_regions_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage", 
                            "source": "#main/prep_samples/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage_merged", 
                            "source": "#main/prep_samples/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__coverage_orig", 
                            "source": "#main/prep_samples/config__algorithm__coverage_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__seq2c_bed_ready", 
                            "source": "#main/prep_samples/config__algorithm__seq2c_bed_ready"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__recalibrate", 
                            "source": "#main/config__algorithm__recalibrate"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/config__algorithm__tools_on", 
                            "source": "#main/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/genome_resources__rnaseq__gene_bed", 
                            "source": "#main/genome_resources__rnaseq__gene_bed"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/genome_resources__variation__dbsnp", 
                            "source": "#main/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/genome_resources__variation__lcr", 
                            "source": "#main/genome_resources__variation__lcr"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/genome_resources__variation__polyx", 
                            "source": "#main/genome_resources__variation__polyx"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/genome_resources__variation__encode_blacklist", 
                            "source": "#main/genome_resources__variation__encode_blacklist"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/reference__twobit", 
                            "source": "#main/reference__twobit"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/resources", 
                            "source": "#main/resources"
                        }, 
                        {
                            "id": "#main/postprocess_alignment_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec"
                        }
                    ], 
                    "run": "#postprocess_alignment_to_rec.cwl"
                }, 
                {
                    "id": "#main/postprocess_alignment", 
                    "in": [
                        {
                            "id": "#main/postprocess_alignment/postprocess_alignment_rec", 
                            "source": "#main/postprocess_alignment_to_rec/postprocess_alignment_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__variant_regions_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__coverage_orig"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/config__algorithm__seq2c_bed_ready"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__callable"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__sample_callable"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/regions__nblock"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__samtools__stats"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__samtools__idxstats"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__variant_regions__regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__variant_regions__dist"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__sv_regions__regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__sv_regions__dist"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__coverage__regions"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__coverage__dist"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/depth__coverage__thresholds"
                        }, 
                        {
                            "id": "#main/postprocess_alignment/align_bam"
                        }
                    ], 
                    "run": "#postprocess_alignment.cwl", 
                    "scatter": [
                        "#main/postprocess_alignment/postprocess_alignment_rec"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/combine_sample_regions", 
                    "in": [
                        {
                            "id": "#main/combine_sample_regions/regions__callable", 
                            "source": "#main/postprocess_alignment/regions__callable"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/regions__nblock", 
                            "source": "#main/postprocess_alignment/regions__nblock"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/metadata__batch", 
                            "source": "#main/metadata__batch"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__nomap_split_size", 
                            "source": "#main/config__algorithm__nomap_split_size"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__nomap_split_targets", 
                            "source": "#main/config__algorithm__nomap_split_targets"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/resources", 
                            "source": "#main/resources"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__non_callable_regions"
                        }, 
                        {
                            "id": "#main/combine_sample_regions/config__algorithm__callable_count"
                        }
                    ], 
                    "run": "#combine_sample_regions.cwl"
                }, 
                {
                    "id": "#main/batch_for_variantcall", 
                    "in": [
                        {
                            "id": "#main/batch_for_variantcall/analysis", 
                            "source": "#main/analysis"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_build", 
                            "source": "#main/genome_build"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/align_bam", 
                            "source": "#main/postprocess_alignment/align_bam"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/vrn_file", 
                            "source": "#main/vrn_file"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/metadata__batch", 
                            "source": "#main/metadata__batch"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/metadata__phenotype", 
                            "source": "#main/metadata__phenotype"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__callable_regions", 
                            "source": "#main/combine_sample_regions/config__algorithm__callable_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/regions__sample_callable", 
                            "source": "#main/postprocess_alignment/regions__sample_callable"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__variantcaller", 
                            "source": "#main/config__algorithm__variantcaller"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__ensemble", 
                            "source": "#main/config__algorithm__ensemble"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__vcfanno", 
                            "source": "#main/config__algorithm__vcfanno"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__coverage_interval", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__effects", 
                            "source": "#main/config__algorithm__effects"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__min_allele_fraction", 
                            "source": "#main/config__algorithm__min_allele_fraction"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__exclude_regions", 
                            "source": "#main/config__algorithm__exclude_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__variant_regions", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__variant_regions_merged", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__validate", 
                            "source": "#main/config__algorithm__validate"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__validate_regions", 
                            "source": "#main/config__algorithm__validate_regions"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__tools_on", 
                            "source": "#main/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/config__algorithm__tools_off", 
                            "source": "#main/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__twobit", 
                            "source": "#main/reference__twobit"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__rtg", 
                            "source": "#main/reference__rtg"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__genome_context", 
                            "source": "#main/reference__genome_context"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__clinvar", 
                            "source": "#main/genome_resources__variation__clinvar"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__cosmic", 
                            "source": "#main/genome_resources__variation__cosmic"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__dbsnp", 
                            "source": "#main/genome_resources__variation__dbsnp"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__esp", 
                            "source": "#main/genome_resources__variation__esp"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__exac", 
                            "source": "#main/genome_resources__variation__exac"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__1000g", 
                            "source": "#main/genome_resources__variation__1000g"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__lcr", 
                            "source": "#main/genome_resources__variation__lcr"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__polyx", 
                            "source": "#main/genome_resources__variation__polyx"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__encode_blacklist", 
                            "source": "#main/genome_resources__variation__encode_blacklist"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__aliases__ensembl", 
                            "source": "#main/genome_resources__aliases__ensembl"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__aliases__human", 
                            "source": "#main/genome_resources__aliases__human"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__aliases__snpeff", 
                            "source": "#main/genome_resources__aliases__snpeff"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/reference__snpeff__hg19", 
                            "source": "#main/reference__snpeff__hg19"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__train_hapmap", 
                            "source": "#main/genome_resources__variation__train_hapmap"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/genome_resources__variation__train_indels", 
                            "source": "#main/genome_resources__variation__train_indels"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/resources", 
                            "source": "#main/resources"
                        }, 
                        {
                            "id": "#main/batch_for_variantcall/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/batch_for_variantcall/batch_rec"
                        }
                    ], 
                    "run": "#batch_for_variantcall.cwl"
                }, 
                {
                    "id": "#main/variantcall", 
                    "in": [
                        {
                            "id": "#main/variantcall/batch_rec", 
                            "source": "#main/batch_for_variantcall/batch_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/variantcall/vc_rec"
                        }
                    ], 
                    "run": "#wf-variantcall.cwl", 
                    "scatter": [
                        "#main/variantcall/batch_rec"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/summarize_vc", 
                    "in": [
                        {
                            "id": "#main/summarize_vc/vc_rec", 
                            "source": "#main/variantcall/vc_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/summarize_vc/variants__calls"
                        }, 
                        {
                            "id": "#main/summarize_vc/variants__gvcf"
                        }, 
                        {
                            "id": "#main/summarize_vc/variants__samples"
                        }, 
                        {
                            "id": "#main/summarize_vc/validate__grading_summary"
                        }, 
                        {
                            "id": "#main/summarize_vc/validate__grading_plots"
                        }
                    ], 
                    "run": "#summarize_vc.cwl"
                }, 
                {
                    "id": "#main/qc_to_rec", 
                    "in": [
                        {
                            "id": "#main/qc_to_rec/align_bam", 
                            "source": "#main/postprocess_alignment/align_bam"
                        }, 
                        {
                            "id": "#main/qc_to_rec/analysis", 
                            "source": "#main/analysis"
                        }, 
                        {
                            "id": "#main/qc_to_rec/reference__fasta__base", 
                            "source": "#main/reference__fasta__base"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__tools_on", 
                            "source": "#main/config__algorithm__tools_on"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__tools_off", 
                            "source": "#main/config__algorithm__tools_off"
                        }, 
                        {
                            "id": "#main/qc_to_rec/genome_build", 
                            "source": "#main/genome_build"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__qc", 
                            "source": "#main/config__algorithm__qc"
                        }, 
                        {
                            "id": "#main/qc_to_rec/metadata__batch", 
                            "source": "#main/metadata__batch"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__coverage_interval", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage_interval"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__variant_regions__regions", 
                            "source": "#main/postprocess_alignment/depth__variant_regions__regions"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__variant_regions__dist", 
                            "source": "#main/postprocess_alignment/depth__variant_regions__dist"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__samtools__stats", 
                            "source": "#main/postprocess_alignment/depth__samtools__stats"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__samtools__idxstats", 
                            "source": "#main/postprocess_alignment/depth__samtools__idxstats"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__sv_regions__regions", 
                            "source": "#main/postprocess_alignment/depth__sv_regions__regions"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__sv_regions__dist", 
                            "source": "#main/postprocess_alignment/depth__sv_regions__dist"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__coverage__regions", 
                            "source": "#main/postprocess_alignment/depth__coverage__regions"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__coverage__dist", 
                            "source": "#main/postprocess_alignment/depth__coverage__dist"
                        }, 
                        {
                            "id": "#main/qc_to_rec/depth__coverage__thresholds", 
                            "source": "#main/postprocess_alignment/depth__coverage__thresholds"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__variant_regions", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__variant_regions_merged", 
                            "source": "#main/postprocess_alignment/config__algorithm__variant_regions_merged"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__coverage", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage"
                        }, 
                        {
                            "id": "#main/qc_to_rec/config__algorithm__coverage_merged", 
                            "source": "#main/postprocess_alignment/config__algorithm__coverage_merged"
                        }, 
                        {
                            "id": "#main/qc_to_rec/variants__samples", 
                            "source": "#main/summarize_vc/variants__samples"
                        }, 
                        {
                            "id": "#main/qc_to_rec/resources", 
                            "source": "#main/resources"
                        }, 
                        {
                            "id": "#main/qc_to_rec/description", 
                            "source": "#main/description"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/qc_to_rec/qc_rec"
                        }
                    ], 
                    "run": "#qc_to_rec.cwl"
                }, 
                {
                    "id": "#main/pipeline_summary", 
                    "in": [
                        {
                            "id": "#main/pipeline_summary/qc_rec", 
                            "source": "#main/qc_to_rec/qc_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/pipeline_summary/qcout_rec"
                        }
                    ], 
                    "run": "#pipeline_summary.cwl", 
                    "scatter": [
                        "#main/pipeline_summary/qc_rec"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#main/multiqc_summary", 
                    "in": [
                        {
                            "id": "#main/multiqc_summary/qcout_rec", 
                            "source": "#main/pipeline_summary/qcout_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#main/multiqc_summary/summary__multiqc"
                        }
                    ], 
                    "run": "#multiqc_summary.cwl"
                }
            ], 
            "id": "#main"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=alignment_rec:resources;description;config__algorithm__align_split_size;files;config__algorithm__trim_reads;reference__fasta__base;config__algorithm__adapters;reference__snap__indexes;rgnames__lb;rgnames__rg;rgnames__lane;reference__bwa__indexes;config__algorithm__bam_clean;config__algorithm__aligner;rgnames__pl;rgnames__pu;config__algorithm__mark_duplicates;analysis;rgnames__sample", 
                "sentinel_inputs=files:var,analysis:var,config__algorithm__align_split_size:var,reference__fasta__base:var,rgnames__pl:var,rgnames__sample:var,rgnames__pu:var,rgnames__lane:var,rgnames__rg:var,rgnames__lb:var,reference__snap__indexes:var,reference__bwa__indexes:var,config__algorithm__aligner:var,config__algorithm__trim_reads:var,config__algorithm__adapters:var,config__algorithm__bam_clean:var,config__algorithm__mark_duplicates:var,resources:var,description:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "alignment_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1028, 
                    "ramMin": 2048, 
                    "tmpdirMin": 2
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 0
                }
            ], 
            "inputs": [
                {
                    "id": "#alignment_to_rec.cwl/files", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/analysis", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__align_split_size", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__pl", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__sample", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__pu", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__lane", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__rg", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/rgnames__lb", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/reference__snap__indexes", 
                    "type": {
                        "items": [
                            "null", 
                            "File"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/reference__bwa__indexes", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__aligner", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__trim_reads", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__adapters", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__bam_clean", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/config__algorithm__mark_duplicates", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#alignment_to_rec.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#alignment_to_rec.cwl/alignment_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__align_split_size", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/files", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__trim_reads", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__adapters", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/reference__snap__indexes", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__lb", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__rg", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__lane", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/reference__bwa__indexes", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__bam_clean", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__aligner", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__pl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__pu", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/config__algorithm__mark_duplicates", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec/rgnames__sample", 
                                    "type": "string"
                                }
                            ], 
                            "name": "#alignment_to_rec.cwl/alignment_rec/alignment_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#alignment_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-batch", 
                "sentinel_outputs=batch_rec:resources;description;reference__fasta__base;config__algorithm__vcfanno;config__algorithm__variantcaller;genome_resources__variation__1000g;config__algorithm__coverage_interval;genome_resources__variation__train_hapmap;genome_resources__variation__clinvar;genome_resources__variation__esp;metadata__batch;genome_resources__variation__lcr;config__algorithm__min_allele_fraction;vrn_file;reference__twobit;reference__genome_context;config__algorithm__validate;reference__snpeff__hg19;config__algorithm__validate_regions;genome_build;genome_resources__variation__exac;metadata__phenotype;genome_resources__aliases__human;config__algorithm__tools_off;genome_resources__variation__dbsnp;genome_resources__variation__polyx;genome_resources__variation__encode_blacklist;genome_resources__variation__cosmic;config__algorithm__ensemble;analysis;config__algorithm__tools_on;config__algorithm__effects;config__algorithm__variant_regions;genome_resources__aliases__ensembl;config__algorithm__exclude_regions;reference__rtg;genome_resources__variation__train_indels;genome_resources__aliases__snpeff;align_bam;config__algorithm__variant_regions_merged;regions__sample_callable;config__algorithm__callable_regions", 
                "sentinel_inputs=analysis:var,genome_build:var,align_bam:var,vrn_file:var,metadata__batch:var,metadata__phenotype:var,config__algorithm__callable_regions:var,regions__sample_callable:var,config__algorithm__variantcaller:var,config__algorithm__ensemble:var,config__algorithm__vcfanno:var,config__algorithm__coverage_interval:var,config__algorithm__effects:var,config__algorithm__min_allele_fraction:var,config__algorithm__exclude_regions:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__validate:var,config__algorithm__validate_regions:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,reference__fasta__base:var,reference__twobit:var,reference__rtg:var,reference__genome_context:var,genome_resources__variation__clinvar:var,genome_resources__variation__cosmic:var,genome_resources__variation__dbsnp:var,genome_resources__variation__esp:var,genome_resources__variation__exac:var,genome_resources__variation__1000g:var,genome_resources__variation__lcr:var,genome_resources__variation__polyx:var,genome_resources__variation__encode_blacklist:var,genome_resources__aliases__ensembl:var,genome_resources__aliases__human:var,genome_resources__aliases__snpeff:var,reference__snpeff__hg19:var,genome_resources__variation__train_hapmap:var,genome_resources__variation__train_indels:var,resources:var,description:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "batch_for_variantcall", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1030, 
                    "ramMin": 2048, 
                    "tmpdirMin": 3
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 0
                }
            ], 
            "inputs": [
                {
                    "id": "#batch_for_variantcall.cwl/analysis", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_build", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/vrn_file", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/metadata__batch", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/metadata__phenotype", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/regions__sample_callable", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__variantcaller", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__ensemble", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__vcfanno", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "items": [
                            "string", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__effects", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__min_allele_fraction", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__exclude_regions", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__variant_regions_merged", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__validate", 
                    "type": {
                        "items": [
                            "null", 
                            "File"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__validate_regions", 
                    "type": {
                        "items": [
                            "null", 
                            "File"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__tools_on", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/config__algorithm__tools_off", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__twobit", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__rtg", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__genome_context", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": {
                            "items": "File", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__clinvar", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__cosmic", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__dbsnp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__esp", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__exac", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__1000g", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__lcr", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__polyx", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__encode_blacklist", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__aliases__ensembl", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__aliases__human", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__aliases__snpeff", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/reference__snpeff__hg19", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__train_hapmap", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/genome_resources__variation__train_indels", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#batch_for_variantcall.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#batch_for_variantcall.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "items": {
                                "fields": [
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/resources", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/description", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "null", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                        "type": [
                                            "string", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/metadata__batch", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                        "type": "long"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/vrn_file", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__twobit", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__genome_context", 
                                        "type": {
                                            "items": "File", 
                                            "type": "array"
                                        }
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                        "type": [
                                            "null", 
                                            "File"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                        "type": [
                                            "null", 
                                            "File"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_build", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                        "type": [
                                            "string", 
                                            "null", 
                                            "boolean"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                        "type": {
                                            "items": "string", 
                                            "type": "array"
                                        }
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/analysis", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "null", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "null", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/reference__rtg", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/align_bam", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                        "type": "File"
                                    }
                                ], 
                                "name": "#batch_for_variantcall.cwl/batch_rec/batch_rec", 
                                "type": "record"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#batch_for_variantcall.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=config__algorithm__callable_regions,config__algorithm__non_callable_regions,config__algorithm__callable_count", 
                "sentinel_inputs=regions__callable:var,regions__nblock:var,metadata__batch:var,config__algorithm__nomap_split_size:var,config__algorithm__nomap_split_targets:var,reference__fasta__base:var,resources:var,description:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "combine_sample_regions", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1025, 
                    "ramMin": 2048, 
                    "tmpdirMin": 1
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "gatk4", 
                            "specs": [
                                "https://anaconda.org/bioconda/gatk4"
                            ]
                        }
                    ]
                }, 
                {
                    "class": "http://arvados.org/cwl#APIRequirement"
                }
            ], 
            "inputs": [
                {
                    "id": "#combine_sample_regions.cwl/regions__callable", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/regions__nblock", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/metadata__batch", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__nomap_split_size", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__nomap_split_targets", 
                    "type": {
                        "items": "long", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__callable_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__non_callable_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#combine_sample_regions.cwl/config__algorithm__callable_count", 
                    "type": {
                        "items": "int", 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#combine_sample_regions.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=batch-single", 
                "sentinel_outputs=vc_rec:batch_samples;validate__summary;validate__tp;validate__fp;validate__fn;resources;description;vrn_file;reference__fasta__base;config__algorithm__vcfanno;config__algorithm__variantcaller;config__algorithm__coverage_interval;metadata__batch;config__algorithm__min_allele_fraction;reference__genome_context;config__algorithm__validate;reference__snpeff__hg19;config__algorithm__validate_regions;genome_build;metadata__phenotype;genome_resources__aliases__human;config__algorithm__tools_off;config__algorithm__ensemble;analysis;config__algorithm__tools_on;config__algorithm__effects;config__algorithm__variant_regions;genome_resources__aliases__ensembl;config__algorithm__exclude_regions;reference__rtg;genome_resources__aliases__snpeff;config__algorithm__variant_regions_merged;regions__sample_callable;config__algorithm__callable_regions", 
                "sentinel_inputs=batch_rec:record,vrn_file:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "compare_to_rm", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1028, 
                    "ramMin": 8192, 
                    "tmpdirMin": 2
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }, 
                        {
                            "package": "gvcf-regions", 
                            "specs": [
                                "https://anaconda.org/bioconda/gvcf-regions"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "rtg-tools", 
                            "specs": [
                                "https://anaconda.org/bioconda/rtg-tools"
                            ]
                        }, 
                        {
                            "package": "vcfanno", 
                            "specs": [
                                "https://anaconda.org/bioconda/vcfanno"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "id": "#compare_to_rm.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/vrn_file", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#compare_to_rm.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#compare_to_rm.cwl/vrn_file", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "outputs": [
                {
                    "id": "#compare_to_rm.cwl/vc_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/batch_samples", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "string", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/validate__summary", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/validate__tp", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/validate__fp", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/validate__fn", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/vrn_file", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#compare_to_rm.cwl/vc_rec/vc_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#compare_to_rm.cwl/vc_rec/vc_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#compare_to_rm.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=batch-merge", 
                "sentinel_outputs=vrn_file", 
                "sentinel_inputs=batch_rec:record,region_block:var,vrn_file_region:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "concat_batch_variantcalls", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1028, 
                    "ramMin": 2048, 
                    "tmpdirMin": 2
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "gatk4", 
                            "specs": [
                                "https://anaconda.org/bioconda/gatk4"
                            ]
                        }
                    ]
                }, 
                {
                    "class": "http://arvados.org/cwl#APIRequirement"
                }
            ], 
            "inputs": [
                {
                    "id": "#concat_batch_variantcalls.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/vrn_file", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#concat_batch_variantcalls.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/region_block", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#concat_batch_variantcalls.cwl/vrn_file_region", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#concat_batch_variantcalls.cwl/vrn_file", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#concat_batch_variantcalls.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=batch-split", 
                "sentinel_outputs=region_block", 
                "sentinel_inputs=batch_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "get_parallel_regions", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1030, 
                    "ramMin": 2048, 
                    "tmpdirMin": 3
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }
            ], 
            "inputs": [
                {
                    "id": "#get_parallel_regions.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/vrn_file", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#get_parallel_regions.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#get_parallel_regions.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#get_parallel_regions.cwl/region_block", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#get_parallel_regions.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=single-merge", 
                "sentinel_outputs=align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq", 
                "sentinel_inputs=alignment_rec:record,work_bam:var,align_bam:var,work_bam_plus__disc:var,work_bam_plus__sr:var,hla__fastq:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "merge_split_alignments", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1035, 
                    "ramMin": 8192, 
                    "tmpdirMin": 6
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 4
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "biobambam", 
                            "specs": [
                                "https://anaconda.org/bioconda/biobambam"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }, 
                        {
                            "package": "variantbam", 
                            "specs": [
                                "https://anaconda.org/bioconda/variantbam"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "id": "#merge_split_alignments.cwl/alignment_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/config__algorithm__align_split_size", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/files", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/config__algorithm__trim_reads", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/config__algorithm__adapters", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/reference__snap__indexes", 
                                "type": [
                                    "null", 
                                    "File"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/rgnames__lb", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/rgnames__rg", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/rgnames__lane", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/reference__bwa__indexes", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/config__algorithm__bam_clean", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/config__algorithm__aligner", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/rgnames__pl", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/rgnames__pu", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/config__algorithm__mark_duplicates", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/analysis", 
                                "type": "string"
                            }, 
                            {
                                "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec/rgnames__sample", 
                                "type": "string"
                            }
                        ], 
                        "name": "#merge_split_alignments.cwl/alignment_rec/alignment_rec", 
                        "type": "record"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/align_bam_toolinput", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__disc_toolinput", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__sr_toolinput", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#merge_split_alignments.cwl/hla__fastq_toolinput", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "File", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#merge_split_alignments.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__disc", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#merge_split_alignments.cwl/work_bam_plus__sr", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#merge_split_alignments.cwl/hla__fastq", 
                    "type": [
                        "null", 
                        {
                            "items": "File", 
                            "type": "array"
                        }
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#merge_split_alignments.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=summary__multiqc", 
                "sentinel_inputs=qcout_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "multiqc_summary", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1030, 
                    "ramMin": 2048, 
                    "tmpdirMin": 3
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "multiqc", 
                            "specs": [
                                "https://anaconda.org/bioconda/multiqc"
                            ]
                        }, 
                        {
                            "package": "multiqc-bcbio", 
                            "specs": [
                                "https://anaconda.org/bioconda/multiqc-bcbio"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "id": "#multiqc_summary.cwl/qcout_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/summary__qc", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/summary__metrics", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/config__algorithm__qc", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }
                            ], 
                            "name": "#multiqc_summary.cwl/qcout_rec/qcout_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#multiqc_summary.cwl/summary__multiqc", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#multiqc_summary.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-parallel", 
                "sentinel_outputs=qcout_rec:summary__qc;summary__metrics;description;genome_build;config__algorithm__tools_off;config__algorithm__qc;config__algorithm__tools_on", 
                "sentinel_inputs=qc_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "pipeline_summary", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1030, 
                    "ramMin": 8192, 
                    "tmpdirMin": 3
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "fastqc=0.11.7=4", 
                            "specs": [
                                "https://anaconda.org/bioconda/fastqc=0.11.7=4"
                            ]
                        }, 
                        {
                            "package": "goleft", 
                            "specs": [
                                "https://anaconda.org/bioconda/goleft"
                            ]
                        }, 
                        {
                            "package": "hts-nim-tools", 
                            "specs": [
                                "https://anaconda.org/bioconda/hts-nim-tools"
                            ]
                        }, 
                        {
                            "package": "mosdepth", 
                            "specs": [
                                "https://anaconda.org/bioconda/mosdepth"
                            ]
                        }, 
                        {
                            "package": "picard", 
                            "specs": [
                                "https://anaconda.org/bioconda/picard"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }, 
                        {
                            "package": "qsignature", 
                            "specs": [
                                "https://anaconda.org/bioconda/qsignature"
                            ]
                        }, 
                        {
                            "package": "qualimap", 
                            "specs": [
                                "https://anaconda.org/bioconda/qualimap"
                            ]
                        }, 
                        {
                            "package": "sambamba", 
                            "specs": [
                                "https://anaconda.org/bioconda/sambamba"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }, 
                        {
                            "package": "preseq", 
                            "specs": [
                                "https://anaconda.org/bioconda/preseq"
                            ]
                        }, 
                        {
                            "package": "peddy", 
                            "specs": [
                                "https://anaconda.org/bioconda/peddy"
                            ]
                        }, 
                        {
                            "package": "verifybamid2", 
                            "specs": [
                                "https://anaconda.org/bioconda/verifybamid2"
                            ]
                        }
                    ]
                }, 
                {
                    "class": "http://arvados.org/cwl#RuntimeConstraints", 
                    "keep_cache": 4096
                }
            ], 
            "inputs": [
                {
                    "id": "#pipeline_summary.cwl/qc_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__coverage_interval", 
                                "type": [
                                    "string", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/metadata__batch", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/genome_build", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__tools_off", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__qc", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/analysis", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__tools_on", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__variant_regions", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/align_bam", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__variant_regions_merged", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__coverage", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/config__algorithm__coverage_merged", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__samtools__stats", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__samtools__idxstats", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__variant_regions__regions", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__variant_regions__dist", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__sv_regions__regions", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__sv_regions__dist", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__coverage__regions", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__coverage__dist", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/depth__coverage__thresholds", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qc_rec/qc_rec/variants__samples", 
                                "type": {
                                    "items": {
                                        "items": [
                                            "File", 
                                            "null"
                                        ], 
                                        "type": "array"
                                    }, 
                                    "type": "array"
                                }
                            }
                        ], 
                        "name": "#pipeline_summary.cwl/qc_rec/qc_rec", 
                        "type": "record"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#pipeline_summary.cwl/qcout_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/summary__qc", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/summary__metrics", 
                                "type": [
                                    "string", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/genome_build", 
                                "type": "string"
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/config__algorithm__tools_off", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/config__algorithm__qc", 
                                "type": {
                                    "items": "string", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec/config__algorithm__tools_on", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }
                        ], 
                        "name": "#pipeline_summary.cwl/qcout_rec/qcout_rec", 
                        "type": "record"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#pipeline_summary.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-parallel", 
                "sentinel_outputs=config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,depth__samtools__stats,depth__samtools__idxstats,depth__variant_regions__regions,depth__variant_regions__dist,depth__sv_regions__regions,depth__sv_regions__dist,depth__coverage__regions,depth__coverage__dist,depth__coverage__thresholds,align_bam", 
                "sentinel_inputs=postprocess_alignment_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "postprocess_alignment", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1033, 
                    "ramMin": 8192, 
                    "tmpdirMin": 5
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "sambamba", 
                            "specs": [
                                "https://anaconda.org/bioconda/sambamba"
                            ]
                        }, 
                        {
                            "package": "goleft", 
                            "specs": [
                                "https://anaconda.org/bioconda/goleft"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "gatk4", 
                            "specs": [
                                "https://anaconda.org/bioconda/gatk4"
                            ]
                        }, 
                        {
                            "package": "mosdepth", 
                            "specs": [
                                "https://anaconda.org/bioconda/mosdepth"
                            ]
                        }, 
                        {
                            "package": "sentieon", 
                            "specs": [
                                "https://anaconda.org/bioconda/sentieon"
                            ]
                        }
                    ]
                }, 
                {
                    "class": "http://arvados.org/cwl#APIRequirement"
                }
            ], 
            "inputs": [
                {
                    "id": "#postprocess_alignment.cwl/postprocess_alignment_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_interval", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__rnaseq__gene_bed", 
                                "type": "File"
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__lcr", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/reference__twobit", 
                                "type": "File"
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__recalibrate", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__dbsnp", 
                                "type": "File"
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__polyx", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__encode_blacklist", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__tools_on", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__exclude_regions", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/align_bam", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions_merged", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions_orig", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_merged", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_orig", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__seq2c_bed_ready", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }
                        ], 
                        "name": "#postprocess_alignment.cwl/postprocess_alignment_rec/postprocess_alignment_rec", 
                        "type": "record"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_interval", 
                    "type": [
                        "string", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__variant_regions_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__coverage_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/config__algorithm__seq2c_bed_ready", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__callable", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__sample_callable", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/regions__nblock", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__samtools__stats", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__samtools__idxstats", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__variant_regions__regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__variant_regions__dist", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__sv_regions__regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__sv_regions__dist", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__coverage__regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__coverage__dist", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/depth__coverage__thresholds", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#postprocess_alignment.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#postprocess_alignment.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=postprocess_alignment_rec:resources;description;reference__fasta__base;config__algorithm__coverage_interval;genome_resources__rnaseq__gene_bed;genome_resources__variation__lcr;reference__twobit;config__algorithm__recalibrate;genome_resources__variation__dbsnp;genome_resources__variation__polyx;genome_resources__variation__encode_blacklist;config__algorithm__tools_on;config__algorithm__variant_regions;config__algorithm__exclude_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__variant_regions_orig;config__algorithm__coverage;config__algorithm__coverage_merged;config__algorithm__coverage_orig;config__algorithm__seq2c_bed_ready", 
                "sentinel_inputs=align_bam:var,config__algorithm__coverage_interval:var,config__algorithm__exclude_regions:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__variant_regions_orig:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,config__algorithm__coverage_orig:var,config__algorithm__seq2c_bed_ready:var,config__algorithm__recalibrate:var,config__algorithm__tools_on:var,genome_resources__rnaseq__gene_bed:var,genome_resources__variation__dbsnp:var,genome_resources__variation__lcr:var,genome_resources__variation__polyx:var,genome_resources__variation__encode_blacklist:var,reference__twobit:var,reference__fasta__base:var,resources:var,description:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "postprocess_alignment_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1028, 
                    "ramMin": 2048, 
                    "tmpdirMin": 2
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 0
                }
            ], 
            "inputs": [
                {
                    "id": "#postprocess_alignment_to_rec.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__exclude_regions", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__variant_regions_merged", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__variant_regions_orig", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage_merged", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__coverage_orig", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__seq2c_bed_ready", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__recalibrate", 
                    "type": {
                        "items": [
                            "string", 
                            "null", 
                            "boolean"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/config__algorithm__tools_on", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/genome_resources__rnaseq__gene_bed", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/genome_resources__variation__dbsnp", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/genome_resources__variation__lcr", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/genome_resources__variation__polyx", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/genome_resources__variation__encode_blacklist", 
                    "type": {
                        "items": [
                            "null", 
                            "string"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/reference__twobit", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_alignment_to_rec.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__rnaseq__gene_bed", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__recalibrate", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__variant_regions_orig", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__coverage_orig", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec/config__algorithm__seq2c_bed_ready", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }
                            ], 
                            "name": "#postprocess_alignment_to_rec.cwl/postprocess_alignment_rec/postprocess_alignment_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#postprocess_alignment_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=batch-single", 
                "sentinel_outputs=vrn_file", 
                "sentinel_inputs=batch_rec:record,vrn_file:var", 
                "run_number=1"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "postprocess_variants", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1025, 
                    "ramMin": 8192, 
                    "tmpdirMin": 1
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "snpeff", 
                            "specs": [
                                "https://anaconda.org/bioconda/snpeff"
                            ], 
                            "version": [
                                "4.3.1t"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "id": "#postprocess_variants.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/vrn_file", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#postprocess_variants.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#postprocess_variants.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#postprocess_variants.cwl/vrn_file_toolinput", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "outputs": [
                {
                    "id": "#postprocess_variants.cwl/vrn_file", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": "File"
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#postprocess_variants.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=single-split", 
                "sentinel_outputs=process_alignment_rec:files;config__algorithm__quality_format;align_split", 
                "sentinel_inputs=alignment_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "prep_align_inputs", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1028, 
                    "ramMin": 8192, 
                    "tmpdirMin": 2
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 4
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "grabix", 
                            "specs": [
                                "https://anaconda.org/bioconda/grabix"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "biobambam", 
                            "specs": [
                                "https://anaconda.org/bioconda/biobambam"
                            ]
                        }, 
                        {
                            "package": "atropos;env", 
                            "specs": [
                                "https://anaconda.org/bioconda/atropos;env"
                            ], 
                            "version": [
                                "python3"
                            ]
                        }, 
                        {
                            "package": "optitype", 
                            "specs": [
                                "https://anaconda.org/bioconda/optitype"
                            ]
                        }, 
                        {
                            "package": "razers3", 
                            "specs": [
                                "https://anaconda.org/bioconda/razers3"
                            ], 
                            "version": [
                                "3.5.0"
                            ]
                        }, 
                        {
                            "package": "coincbc", 
                            "specs": [
                                "https://anaconda.org/bioconda/coincbc"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "id": "#prep_align_inputs.cwl/alignment_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/config__algorithm__align_split_size", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/files", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/config__algorithm__trim_reads", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/config__algorithm__adapters", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/reference__snap__indexes", 
                                "type": [
                                    "null", 
                                    "File"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/rgnames__lb", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/rgnames__rg", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/rgnames__lane", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/reference__bwa__indexes", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/config__algorithm__bam_clean", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/config__algorithm__aligner", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/rgnames__pl", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/rgnames__pu", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/config__algorithm__mark_duplicates", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/analysis", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec/rgnames__sample", 
                                "type": "string"
                            }
                        ], 
                        "name": "#prep_align_inputs.cwl/alignment_rec/alignment_rec", 
                        "type": "record"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#prep_align_inputs.cwl/process_alignment_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec/files", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "File", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec/config__algorithm__quality_format", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec/align_split", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }
                            ], 
                            "name": "#prep_align_inputs.cwl/process_alignment_rec/process_alignment_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#prep_align_inputs.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-parallel", 
                "sentinel_outputs=rgnames__sample,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready", 
                "sentinel_inputs=prep_samples_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "prep_samples", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1025, 
                    "ramMin": 2048, 
                    "tmpdirMin": 1
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }
                    ]
                }
            ], 
            "inputs": [
                {
                    "id": "#prep_samples.cwl/prep_samples_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#prep_samples.cwl/prep_samples_rec/prep_samples_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_samples.cwl/prep_samples_rec/prep_samples_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_samples.cwl/prep_samples_rec/prep_samples_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#prep_samples.cwl/prep_samples_rec/prep_samples_rec/rgnames__sample", 
                                "type": "string"
                            }, 
                            {
                                "name": "#prep_samples.cwl/prep_samples_rec/prep_samples_rec/config__algorithm__variant_regions", 
                                "type": "File"
                            }
                        ], 
                        "name": "#prep_samples.cwl/prep_samples_rec/prep_samples_rec", 
                        "type": "record"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#prep_samples.cwl/rgnames__sample", 
                    "type": "string"
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__variant_regions_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__coverage", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__coverage_merged", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__coverage_orig", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#prep_samples.cwl/config__algorithm__seq2c_bed_ready", 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#prep_samples.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=prep_samples_rec:resources;description;reference__fasta__base;rgnames__sample;config__algorithm__variant_regions", 
                "sentinel_inputs=rgnames__sample:var,config__algorithm__variant_regions:var,reference__fasta__base:var,resources:var,description:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "prep_samples_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1025, 
                    "ramMin": 2048, 
                    "tmpdirMin": 1
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 0
                }
            ], 
            "inputs": [
                {
                    "id": "#prep_samples_to_rec.cwl/rgnames__sample", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#prep_samples_to_rec.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#prep_samples_to_rec.cwl/prep_samples_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/rgnames__sample", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec/config__algorithm__variant_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#prep_samples_to_rec.cwl/prep_samples_rec/prep_samples_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#prep_samples_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=single-parallel", 
                "sentinel_outputs=work_bam,align_bam,hla__fastq,work_bam_plus__disc,work_bam_plus__sr", 
                "sentinel_inputs=alignment_rec:record,process_alignment_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "process_alignment", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1030, 
                    "ramMin": 8192, 
                    "tmpdirMin": 3
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 7
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bwa", 
                            "specs": [
                                "https://anaconda.org/bioconda/bwa"
                            ]
                        }, 
                        {
                            "package": "bwakit", 
                            "specs": [
                                "https://anaconda.org/bioconda/bwakit"
                            ]
                        }, 
                        {
                            "package": "grabix", 
                            "specs": [
                                "https://anaconda.org/bioconda/grabix"
                            ]
                        }, 
                        {
                            "package": "minimap2", 
                            "specs": [
                                "https://anaconda.org/bioconda/minimap2"
                            ]
                        }, 
                        {
                            "package": "novoalign", 
                            "specs": [
                                "https://anaconda.org/bioconda/novoalign"
                            ]
                        }, 
                        {
                            "package": "snap-aligner", 
                            "specs": [
                                "https://anaconda.org/bioconda/snap-aligner"
                            ], 
                            "version": [
                                "1.0dev.97"
                            ]
                        }, 
                        {
                            "package": "sentieon", 
                            "specs": [
                                "https://anaconda.org/bioconda/sentieon"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }, 
                        {
                            "package": "pysam>", 
                            "specs": [
                                "https://anaconda.org/bioconda/pysam>"
                            ], 
                            "version": [
                                "0.13.0"
                            ]
                        }, 
                        {
                            "package": "sambamba", 
                            "specs": [
                                "https://anaconda.org/bioconda/sambamba"
                            ]
                        }, 
                        {
                            "package": "fgbio", 
                            "specs": [
                                "https://anaconda.org/bioconda/fgbio"
                            ]
                        }, 
                        {
                            "package": "umis", 
                            "specs": [
                                "https://anaconda.org/bioconda/umis"
                            ]
                        }, 
                        {
                            "package": "biobambam", 
                            "specs": [
                                "https://anaconda.org/bioconda/biobambam"
                            ]
                        }, 
                        {
                            "package": "seqtk", 
                            "specs": [
                                "https://anaconda.org/bioconda/seqtk"
                            ]
                        }, 
                        {
                            "package": "samblaster", 
                            "specs": [
                                "https://anaconda.org/bioconda/samblaster"
                            ]
                        }, 
                        {
                            "package": "variantbam", 
                            "specs": [
                                "https://anaconda.org/bioconda/variantbam"
                            ]
                        }
                    ]
                }, 
                {
                    "class": "http://arvados.org/cwl#APIRequirement"
                }
            ], 
            "inputs": [
                {
                    "id": "#process_alignment.cwl/alignment_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/config__algorithm__align_split_size", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/files", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/config__algorithm__trim_reads", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/config__algorithm__adapters", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/reference__snap__indexes", 
                                "type": [
                                    "null", 
                                    "File"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/rgnames__lb", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/rgnames__rg", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/rgnames__lane", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/reference__bwa__indexes", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/config__algorithm__bam_clean", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/config__algorithm__aligner", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/rgnames__pl", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/rgnames__pu", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/config__algorithm__mark_duplicates", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/analysis", 
                                "type": "string"
                            }, 
                            {
                                "name": "#process_alignment.cwl/alignment_rec/alignment_rec/rgnames__sample", 
                                "type": "string"
                            }
                        ], 
                        "name": "#process_alignment.cwl/alignment_rec/alignment_rec", 
                        "type": "record"
                    }
                }, 
                {
                    "id": "#process_alignment.cwl/process_alignment_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#process_alignment.cwl/process_alignment_rec/process_alignment_rec/files", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/process_alignment_rec/process_alignment_rec/config__algorithm__quality_format", 
                                "type": [
                                    "string", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#process_alignment.cwl/process_alignment_rec/process_alignment_rec/align_split", 
                                "type": [
                                    "string", 
                                    "null"
                                ]
                            }
                        ], 
                        "name": "#process_alignment.cwl/process_alignment_rec/process_alignment_rec", 
                        "type": "record"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#process_alignment.cwl/work_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/hla__fastq", 
                    "type": [
                        "null", 
                        {
                            "items": "File", 
                            "type": "array"
                        }
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/work_bam_plus__disc", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#process_alignment.cwl/work_bam_plus__sr", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#process_alignment.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=qc_rec:resources;description;reference__fasta__base;config__algorithm__coverage_interval;metadata__batch;genome_build;config__algorithm__tools_off;config__algorithm__qc;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged;depth__samtools__stats;depth__samtools__idxstats;depth__variant_regions__regions;depth__variant_regions__dist;depth__sv_regions__regions;depth__sv_regions__dist;depth__coverage__regions;depth__coverage__dist;depth__coverage__thresholds;variants__samples", 
                "sentinel_inputs=align_bam:var,analysis:var,reference__fasta__base:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,genome_build:var,config__algorithm__qc:var,metadata__batch:var,config__algorithm__coverage_interval:var,depth__variant_regions__regions:var,depth__variant_regions__dist:var,depth__samtools__stats:var,depth__samtools__idxstats:var,depth__sv_regions__regions:var,depth__sv_regions__dist:var,depth__coverage__regions:var,depth__coverage__dist:var,depth__coverage__thresholds:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,variants__samples:var,resources:var,description:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "qc_to_rec", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1028, 
                    "ramMin": 2048, 
                    "tmpdirMin": 2
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 0
                }
            ], 
            "inputs": [
                {
                    "id": "#qc_to_rec.cwl/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/analysis", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/reference__fasta__base", 
                    "secondaryFiles": [
                        ".fai", 
                        "^.dict"
                    ], 
                    "type": {
                        "items": "File", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__tools_on", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": "null", 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__tools_off", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/genome_build", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__qc", 
                    "type": {
                        "items": {
                            "items": "string", 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/metadata__batch", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__coverage_interval", 
                    "type": {
                        "items": [
                            "string", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__variant_regions__regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__variant_regions__dist", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__samtools__stats", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__samtools__idxstats", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__sv_regions__regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__sv_regions__dist", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__coverage__regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__coverage__dist", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/depth__coverage__thresholds", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__variant_regions", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__variant_regions_merged", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__coverage", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/config__algorithm__coverage_merged", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/variants__samples", 
                    "type": {
                        "items": {
                            "items": {
                                "items": [
                                    "File", 
                                    "null"
                                ], 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/resources", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#qc_to_rec.cwl/description", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#qc_to_rec.cwl/qc_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__qc", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__coverage", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/config__algorithm__coverage_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__samtools__stats", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__samtools__idxstats", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__variant_regions__regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__variant_regions__dist", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__sv_regions__regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__sv_regions__dist", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__coverage__regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__coverage__dist", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/depth__coverage__thresholds", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#qc_to_rec.cwl/qc_rec/qc_rec/variants__samples", 
                                    "type": {
                                        "items": {
                                            "items": [
                                                "File", 
                                                "null"
                                            ], 
                                            "type": "array"
                                        }, 
                                        "type": "array"
                                    }
                                }
                            ], 
                            "name": "#qc_to_rec.cwl/qc_rec/qc_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#qc_to_rec.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=multi-combined", 
                "sentinel_outputs=variants__calls,variants__gvcf,variants__samples,validate__grading_summary,validate__grading_plots", 
                "sentinel_inputs=vc_rec:record", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "summarize_vc", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 1, 
                    "outdirMin": 1025, 
                    "ramMin": 2048, 
                    "tmpdirMin": 1
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }
            ], 
            "inputs": [
                {
                    "id": "#summarize_vc.cwl/vc_rec", 
                    "type": {
                        "items": {
                            "items": {
                                "fields": [
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/batch_samples", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "string", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/validate__summary", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/validate__tp", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/validate__fp", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/validate__fn", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/resources", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/description", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/vrn_file", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/reference__fasta__base", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__vcfanno", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "null", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__variantcaller", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__coverage_interval", 
                                        "type": [
                                            "string", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/metadata__batch", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__min_allele_fraction", 
                                        "type": "long"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/reference__genome_context", 
                                        "type": {
                                            "items": "File", 
                                            "type": "array"
                                        }
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__validate", 
                                        "type": [
                                            "null", 
                                            "File"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/reference__snpeff__hg19", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__validate_regions", 
                                        "type": [
                                            "null", 
                                            "File"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/genome_build", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/metadata__phenotype", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/genome_resources__aliases__human", 
                                        "type": [
                                            "string", 
                                            "null", 
                                            "boolean"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__tools_off", 
                                        "type": {
                                            "items": "string", 
                                            "type": "array"
                                        }
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__ensemble", 
                                        "type": [
                                            "null", 
                                            "string"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/analysis", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__tools_on", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "null", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__effects", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__variant_regions", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/genome_resources__aliases__ensembl", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__exclude_regions", 
                                        "type": [
                                            "null", 
                                            {
                                                "items": "null", 
                                                "type": "array"
                                            }
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/reference__rtg", 
                                        "type": "File"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/genome_resources__aliases__snpeff", 
                                        "type": "string"
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__variant_regions_merged", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/regions__sample_callable", 
                                        "type": [
                                            "File", 
                                            "null"
                                        ]
                                    }, 
                                    {
                                        "name": "#summarize_vc.cwl/vc_rec/vc_rec/config__algorithm__callable_regions", 
                                        "type": "File"
                                    }
                                ], 
                                "name": "#summarize_vc.cwl/vc_rec/vc_rec", 
                                "type": "record"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#summarize_vc.cwl/variants__calls", 
                    "type": {
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_vc.cwl/variants__gvcf", 
                    "type": {
                        "items": [
                            "null", 
                            {
                                "items": [
                                    "File", 
                                    "null"
                                ], 
                                "type": "array"
                            }
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_vc.cwl/variants__samples", 
                    "type": {
                        "items": {
                            "items": {
                                "items": [
                                    "File", 
                                    "null"
                                ], 
                                "type": "array"
                            }, 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_vc.cwl/validate__grading_summary", 
                    "type": {
                        "items": [
                            "File", 
                            "null"
                        ], 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#summarize_vc.cwl/validate__grading_plots", 
                    "type": {
                        "items": {
                            "items": [
                                "File", 
                                "null"
                            ], 
                            "type": "array"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#summarize_vc.cwl"
        }, 
        {
            "arguments": [
                {
                    "position": 0, 
                    "valueFrom": "sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])"
                }, 
                "sentinel_parallel=batch-parallel", 
                "sentinel_outputs=vrn_file_region,region_block", 
                "sentinel_inputs=batch_rec:record,region_block:var", 
                "run_number=0"
            ], 
            "baseCommand": [
                "bcbio_nextgen.py", 
                "runfn", 
                "variantcall_batch_region", 
                "cwl"
            ], 
            "class": "CommandLineTool", 
            "hints": [
                {
                    "class": "DockerRequirement", 
                    "dockerImageId": "quay.io/bcbio/bcbio-vc", 
                    "dockerPull": "quay.io/bcbio/bcbio-vc"
                }, 
                {
                    "class": "ResourceRequirement", 
                    "coresMin": 4, 
                    "outdirMin": 1030, 
                    "ramMin": 8192, 
                    "tmpdirMin": 3
                }, 
                {
                    "class": "https://www.dnanexus.com/cwl#InputResourceRequirement", 
                    "indirMin": 1
                }, 
                {
                    "class": "SoftwareRequirement", 
                    "packages": [
                        {
                            "package": "bcftools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bcftools"
                            ]
                        }, 
                        {
                            "package": "bedtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/bedtools"
                            ]
                        }, 
                        {
                            "package": "freebayes", 
                            "specs": [
                                "https://anaconda.org/bioconda/freebayes"
                            ], 
                            "version": [
                                "1.1.0.46"
                            ]
                        }, 
                        {
                            "package": "gatk4", 
                            "specs": [
                                "https://anaconda.org/bioconda/gatk4"
                            ]
                        }, 
                        {
                            "package": "vqsr_cnn", 
                            "specs": [
                                "https://anaconda.org/bioconda/vqsr_cnn"
                            ]
                        }, 
                        {
                            "package": "deepvariant", 
                            "specs": [
                                "https://anaconda.org/bioconda/deepvariant"
                            ]
                        }, 
                        {
                            "package": "sentieon", 
                            "specs": [
                                "https://anaconda.org/bioconda/sentieon"
                            ]
                        }, 
                        {
                            "package": "htslib", 
                            "specs": [
                                "https://anaconda.org/bioconda/htslib"
                            ]
                        }, 
                        {
                            "package": "octopus", 
                            "specs": [
                                "https://anaconda.org/bioconda/octopus"
                            ]
                        }, 
                        {
                            "package": "picard", 
                            "specs": [
                                "https://anaconda.org/bioconda/picard"
                            ]
                        }, 
                        {
                            "package": "platypus-variant", 
                            "specs": [
                                "https://anaconda.org/bioconda/platypus-variant"
                            ]
                        }, 
                        {
                            "package": "pythonpy", 
                            "specs": [
                                "https://anaconda.org/bioconda/pythonpy"
                            ]
                        }, 
                        {
                            "package": "samtools", 
                            "specs": [
                                "https://anaconda.org/bioconda/samtools"
                            ]
                        }, 
                        {
                            "package": "pysam>", 
                            "specs": [
                                "https://anaconda.org/bioconda/pysam>"
                            ], 
                            "version": [
                                "0.13.0"
                            ]
                        }, 
                        {
                            "package": "strelka", 
                            "specs": [
                                "https://anaconda.org/bioconda/strelka"
                            ]
                        }, 
                        {
                            "package": "vardict", 
                            "specs": [
                                "https://anaconda.org/bioconda/vardict"
                            ]
                        }, 
                        {
                            "package": "vardict-java", 
                            "specs": [
                                "https://anaconda.org/bioconda/vardict-java"
                            ]
                        }, 
                        {
                            "package": "varscan", 
                            "specs": [
                                "https://anaconda.org/bioconda/varscan"
                            ]
                        }, 
                        {
                            "package": "vcfanno", 
                            "specs": [
                                "https://anaconda.org/bioconda/vcfanno"
                            ]
                        }, 
                        {
                            "package": "vcflib", 
                            "specs": [
                                "https://anaconda.org/bioconda/vcflib"
                            ]
                        }, 
                        {
                            "package": "vt", 
                            "specs": [
                                "https://anaconda.org/bioconda/vt"
                            ]
                        }, 
                        {
                            "package": "r", 
                            "specs": [
                                "https://anaconda.org/bioconda/r"
                            ], 
                            "version": [
                                "3.4.1"
                            ]
                        }, 
                        {
                            "package": "perl", 
                            "specs": [
                                "https://anaconda.org/bioconda/perl"
                            ]
                        }
                    ]
                }, 
                {
                    "class": "http://arvados.org/cwl#APIRequirement"
                }, 
                {
                    "class": "http://arvados.org/cwl#RuntimeConstraints", 
                    "keep_cache": 4096
                }
            ], 
            "inputs": [
                {
                    "id": "#variantcall_batch_region.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/vrn_file", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#variantcall_batch_region.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/region_block_toolinput", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#variantcall_batch_region.cwl/vrn_file_region", 
                    "secondaryFiles": [
                        ".tbi"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#variantcall_batch_region.cwl/region_block", 
                    "type": {
                        "items": "string", 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }, 
                {
                    "class": "InitialWorkDirRequirement", 
                    "listing": [
                        {
                            "entry": "$(JSON.stringify(inputs))", 
                            "entryname": "cwl.inputs.json"
                        }
                    ]
                }
            ], 
            "id": "#variantcall_batch_region.cwl"
        }, 
        {
            "class": "Workflow", 
            "hints": [], 
            "inputs": [
                {
                    "id": "#wf-alignment.cwl/alignment_rec", 
                    "type": {
                        "fields": [
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/resources", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/description", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/config__algorithm__align_split_size", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/files", 
                                "type": {
                                    "items": "File", 
                                    "type": "array"
                                }
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/config__algorithm__trim_reads", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/reference__fasta__base", 
                                "type": "File"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/config__algorithm__adapters", 
                                "type": [
                                    "null", 
                                    {
                                        "items": "null", 
                                        "type": "array"
                                    }
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/reference__snap__indexes", 
                                "type": [
                                    "null", 
                                    "File"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/rgnames__lb", 
                                "type": [
                                    "null", 
                                    "string"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/rgnames__rg", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/rgnames__lane", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/reference__bwa__indexes", 
                                "type": [
                                    "File", 
                                    "null"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/config__algorithm__bam_clean", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/config__algorithm__aligner", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/rgnames__pl", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/rgnames__pu", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/config__algorithm__mark_duplicates", 
                                "type": [
                                    "string", 
                                    "null", 
                                    "boolean"
                                ]
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/analysis", 
                                "type": "string"
                            }, 
                            {
                                "name": "#wf-alignment.cwl/alignment_rec/alignment_rec/rgnames__sample", 
                                "type": "string"
                            }
                        ], 
                        "name": "#wf-alignment.cwl/alignment_rec/alignment_rec", 
                        "type": "record"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#wf-alignment.cwl/align_bam", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/align_bam", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-alignment.cwl/work_bam_plus__disc", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__disc", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-alignment.cwl/work_bam_plus__sr", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__sr", 
                    "secondaryFiles": [
                        ".bai"
                    ], 
                    "type": [
                        "File", 
                        "null"
                    ]
                }, 
                {
                    "id": "#wf-alignment.cwl/hla__fastq", 
                    "outputSource": "#wf-alignment.cwl/merge_split_alignments/hla__fastq", 
                    "type": [
                        "null", 
                        {
                            "items": "File", 
                            "type": "array"
                        }
                    ]
                }
            ], 
            "requirements": [
                {
                    "class": "EnvVarRequirement", 
                    "envDef": [
                        {
                            "envName": "MPLCONFIGDIR", 
                            "envValue": "."
                        }
                    ]
                }, 
                {
                    "class": "ScatterFeatureRequirement"
                }, 
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ], 
            "steps": [
                {
                    "id": "#wf-alignment.cwl/prep_align_inputs", 
                    "in": [
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/alignment_rec", 
                            "source": "#wf-alignment.cwl/alignment_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-alignment.cwl/prep_align_inputs/process_alignment_rec"
                        }
                    ], 
                    "run": "#prep_align_inputs.cwl"
                }, 
                {
                    "id": "#wf-alignment.cwl/process_alignment", 
                    "in": [
                        {
                            "id": "#wf-alignment.cwl/process_alignment/alignment_rec", 
                            "source": "#wf-alignment.cwl/alignment_rec"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/process_alignment_rec", 
                            "source": "#wf-alignment.cwl/prep_align_inputs/process_alignment_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-alignment.cwl/process_alignment/work_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/align_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/hla__fastq"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/process_alignment/work_bam_plus__sr"
                        }
                    ], 
                    "run": "#process_alignment.cwl", 
                    "scatter": [
                        "#wf-alignment.cwl/process_alignment/process_alignment_rec"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#wf-alignment.cwl/merge_split_alignments", 
                    "in": [
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/alignment_rec", 
                            "source": "#wf-alignment.cwl/alignment_rec"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam", 
                            "source": "#wf-alignment.cwl/process_alignment/work_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/align_bam_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/align_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__disc_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__sr_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/work_bam_plus__sr"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/hla__fastq_toolinput", 
                            "source": "#wf-alignment.cwl/process_alignment/hla__fastq"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/align_bam"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__disc"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/work_bam_plus__sr"
                        }, 
                        {
                            "id": "#wf-alignment.cwl/merge_split_alignments/hla__fastq"
                        }
                    ], 
                    "run": "#merge_split_alignments.cwl"
                }
            ], 
            "id": "#wf-alignment.cwl"
        }, 
        {
            "class": "Workflow", 
            "hints": [], 
            "inputs": [
                {
                    "id": "#wf-variantcall.cwl/batch_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__1000g", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__train_hapmap", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__clinvar", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__esp", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__lcr", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/vrn_file", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/reference__twobit", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__exac", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__dbsnp", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__polyx", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__encode_blacklist", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__cosmic", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__variation__train_indels", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/align_bam", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/batch_rec/batch_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#wf-variantcall.cwl/batch_rec/batch_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "outputs": [
                {
                    "id": "#wf-variantcall.cwl/vc_rec", 
                    "outputSource": "#wf-variantcall.cwl/compare_to_rm/vc_rec", 
                    "type": {
                        "items": {
                            "fields": [
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/batch_samples", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "string", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__summary", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__tp", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__fp", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/validate__fn", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/resources", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/description", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/vrn_file", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__fasta__base", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__vcfanno", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__variantcaller", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__coverage_interval", 
                                    "type": [
                                        "string", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/metadata__batch", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__min_allele_fraction", 
                                    "type": "long"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__genome_context", 
                                    "type": {
                                        "items": "File", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__validate", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__snpeff__hg19", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__validate_regions", 
                                    "type": [
                                        "null", 
                                        "File"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_build", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/metadata__phenotype", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_resources__aliases__human", 
                                    "type": [
                                        "string", 
                                        "null", 
                                        "boolean"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__tools_off", 
                                    "type": {
                                        "items": "string", 
                                        "type": "array"
                                    }
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__ensemble", 
                                    "type": [
                                        "null", 
                                        "string"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/analysis", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__tools_on", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__effects", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__variant_regions", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_resources__aliases__ensembl", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__exclude_regions", 
                                    "type": [
                                        "null", 
                                        {
                                            "items": "null", 
                                            "type": "array"
                                        }
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/reference__rtg", 
                                    "type": "File"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/genome_resources__aliases__snpeff", 
                                    "type": "string"
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__variant_regions_merged", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/regions__sample_callable", 
                                    "type": [
                                        "File", 
                                        "null"
                                    ]
                                }, 
                                {
                                    "name": "#wf-variantcall.cwl/vc_rec/vc_rec/config__algorithm__callable_regions", 
                                    "type": "File"
                                }
                            ], 
                            "name": "#wf-variantcall.cwl/vc_rec/vc_rec", 
                            "type": "record"
                        }, 
                        "type": "array"
                    }
                }
            ], 
            "requirements": [
                {
                    "class": "EnvVarRequirement", 
                    "envDef": [
                        {
                            "envName": "MPLCONFIGDIR", 
                            "envValue": "."
                        }
                    ]
                }, 
                {
                    "class": "ScatterFeatureRequirement"
                }, 
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ], 
            "steps": [
                {
                    "id": "#wf-variantcall.cwl/get_parallel_regions", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/batch_rec", 
                            "source": "#wf-variantcall.cwl/batch_rec"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/get_parallel_regions/region_block"
                        }
                    ], 
                    "run": "#get_parallel_regions.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/variantcall_batch_region", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/batch_rec", 
                            "source": "#wf-variantcall.cwl/batch_rec"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/region_block_toolinput", 
                            "source": "#wf-variantcall.cwl/get_parallel_regions/region_block"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/vrn_file_region"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/variantcall_batch_region/region_block"
                        }
                    ], 
                    "run": "#variantcall_batch_region.cwl", 
                    "scatter": [
                        "#wf-variantcall.cwl/variantcall_batch_region/region_block_toolinput"
                    ], 
                    "scatterMethod": "dotproduct"
                }, 
                {
                    "id": "#wf-variantcall.cwl/concat_batch_variantcalls", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/batch_rec", 
                            "source": "#wf-variantcall.cwl/batch_rec"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/region_block", 
                            "source": "#wf-variantcall.cwl/variantcall_batch_region/region_block"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/vrn_file_region", 
                            "source": "#wf-variantcall.cwl/variantcall_batch_region/vrn_file_region"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/concat_batch_variantcalls/vrn_file"
                        }
                    ], 
                    "run": "#concat_batch_variantcalls.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/postprocess_variants", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/batch_rec", 
                            "source": "#wf-variantcall.cwl/batch_rec"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/vrn_file_toolinput", 
                            "source": "#wf-variantcall.cwl/concat_batch_variantcalls/vrn_file"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/postprocess_variants/vrn_file"
                        }
                    ], 
                    "run": "#postprocess_variants.cwl"
                }, 
                {
                    "id": "#wf-variantcall.cwl/compare_to_rm", 
                    "in": [
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/batch_rec", 
                            "source": "#wf-variantcall.cwl/batch_rec"
                        }, 
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/vrn_file", 
                            "source": "#wf-variantcall.cwl/postprocess_variants/vrn_file"
                        }
                    ], 
                    "out": [
                        {
                            "id": "#wf-variantcall.cwl/compare_to_rm/vc_rec"
                        }
                    ], 
                    "run": "#compare_to_rm.cwl"
                }
            ], 
            "id": "#wf-variantcall.cwl"
        }
    ]
}