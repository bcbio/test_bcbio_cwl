arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-batch
- sentinel_outputs=sv_batch_rec:description;resources;genome_build;config__algorithm__tools_off;analysis;config__algorithm__tools_on;work_bam_plus__disc;work_bam_plus__sr;depth__bins__normalized;depth__bins__target;depth__bins__antitarget;regions__bins__target;regions__bins__antitarget;regions__bins__group;reference__fasta__base;config__algorithm__svcaller;config__algorithm__coverage_interval;genome_resources__rnaseq__gene_bed;metadata__batch;metadata__phenotype;config__algorithm__sv_regions;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;depth__variant_regions__regions;config__algorithm__callable_regions
- sentinel_inputs=analysis:var,genome_build:var,work_bam_plus__disc:var,work_bam_plus__sr:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,sv_coverage_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- batch_for_sv
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 2
  outdirMin: 1025
  ramMin: 4096
  tmpdirMin: 1
inputs:
- id: analysis
  type:
    items: string
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: work_bam_plus__disc
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: work_bam_plus__sr
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__tools_on
  type:
    items:
      items:
      - 'null'
      - string
      type: array
    type: array
- id: config__algorithm__tools_off
  type:
    items:
      items:
      - 'null'
      - string
      type: array
    type: array
- id: sv_coverage_rec
  type:
    items:
      fields:
      - name: depth__bins__normalized
        type:
        - File
        - 'null'
      - name: description
        type: string
      - name: resources
        type: string
      - name: depth__bins__target
        type:
        - File
        - 'null'
      - name: depth__bins__antitarget
        type:
        - File
        - 'null'
      - name: regions__bins__target
        type:
        - File
        - 'null'
      - name: regions__bins__antitarget
        type:
        - File
        - 'null'
      - name: regions__bins__group
        type:
        - string
        - 'null'
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__svcaller
        type:
          items: string
          type: array
      - name: config__algorithm__coverage_interval
        type: string
      - name: genome_resources__rnaseq__gene_bed
        type: File
      - name: metadata__batch
        type: string
      - name: metadata__phenotype
        type: string
      - name: config__algorithm__sv_regions
        type: File
      - name: config__algorithm__variant_regions
        type: File
      - name: align_bam
        type: File
      - name: config__algorithm__variant_regions_merged
        type: File
      - name: depth__variant_regions__regions
        type: File
      - name: config__algorithm__callable_regions
        type: File
      name: sv_coverage_rec
      type: record
    type: array
outputs:
- id: sv_batch_rec
  type:
    items:
      items:
        fields:
        - name: description
          type: string
        - name: resources
          type: string
        - name: genome_build
          type: string
        - name: config__algorithm__tools_off
          type:
            items:
            - 'null'
            - string
            type: array
        - name: analysis
          type: string
        - name: config__algorithm__tools_on
          type:
            items:
            - 'null'
            - string
            type: array
        - name: work_bam_plus__disc
          type:
          - File
          - 'null'
        - name: work_bam_plus__sr
          type:
          - File
          - 'null'
        - name: depth__bins__normalized
          type:
          - File
          - 'null'
        - name: depth__bins__target
          type:
          - File
          - 'null'
        - name: depth__bins__antitarget
          type:
          - File
          - 'null'
        - name: regions__bins__target
          type:
          - File
          - 'null'
        - name: regions__bins__antitarget
          type:
          - File
          - 'null'
        - name: regions__bins__group
          type:
          - string
          - 'null'
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
        - name: config__algorithm__sv_regions
          type: File
        - name: config__algorithm__variant_regions
          type: File
        - name: align_bam
          type: File
        - name: config__algorithm__variant_regions_merged
          type: File
        - name: depth__variant_regions__regions
          type: File
        - name: config__algorithm__callable_regions
          type: File
        name: sv_batch_rec
        type: record
      type: array
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
