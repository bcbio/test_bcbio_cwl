class: Workflow
cwlVersion: v1.0
hints: []
inputs:
- id: sv_batch_rec
  type:
    items:
      fields:
      - name: description
        type: string
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__svcaller
        type: string
      - name: config__algorithm__coverage_interval
        type: string
      - name: genome_resources__rnaseq__gene_bed
        type: File
      - name: metadata__batch
        type: string
      - name: metadata__phenotype
        type: string
      - name: genome_build
        type: string
      - name: config__algorithm__tools_off
        type:
          items: string
          type: array
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items: string
          type: array
      - name: config__algorithm__variant_regions
        type: File
      - name: align_bam
        type: File
      - name: work_bam_plus__disc
        type:
        - File
        - 'null'
      - name: work_bam_plus__sr
        type:
        - File
        - 'null'
      - name: config__algorithm__variant_regions_merged
        type: File
      name: sv_batch_rec
      type: record
    type: array
outputs:
- id: sv__0__variantcaller
  outputSource: detect_sv/sv__0__variantcaller
  type: string
- id: sv__0__vrn_file
  outputSource: detect_sv/sv__0__vrn_file
  secondaryFiles:
  - .tbi
  type: File
requirements:
- class: EnvVarRequirement
  envDef:
  - envName: MPLCONFIGDIR
    envValue: .
- class: ScatterFeatureRequirement
- class: SubworkflowFeatureRequirement
steps:
- id: detect_sv
  in:
  - id: sv_batch_rec
    source: sv_batch_rec
  out:
  - id: sv__0__variantcaller
  - id: sv__0__vrn_file
  run: steps/detect_sv.cwl
