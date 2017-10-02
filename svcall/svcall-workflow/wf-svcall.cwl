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
      - name: resources
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
      - name: genome_build
        type: string
      - name: metadata__phenotype
        type: string
      - name: config__algorithm__tools_off
        type:
          items:
          - 'null'
          - string
          type: array
      - name: config__algorithm__sv_regions
        type: File
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items:
          - 'null'
          - string
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
- id: sv_rec
  outputSource: detect_sv/sv_rec
  type:
    items:
      fields:
      - name: sv__variantcaller
        type: string
      - name: sv__vrn_file
        type: File
      - name: description
        type: string
      - name: resources
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
      - name: genome_build
        type: string
      - name: metadata__phenotype
        type: string
      - name: config__algorithm__tools_off
        type:
          items:
          - 'null'
          - string
          type: array
      - name: config__algorithm__sv_regions
        type: File
      - name: analysis
        type: string
      - name: config__algorithm__tools_on
        type:
          items:
          - 'null'
          - string
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
      name: sv_rec
      type: record
    type: array
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
  - id: sv_rec
  run: steps/detect_sv.cwl
