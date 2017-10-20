arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-batch
- sentinel_outputs=sv_batch_rec:description;resources;reference__fasta__base;config__algorithm__svcaller;config__algorithm__coverage_interval;genome_resources__rnaseq__gene_bed;metadata__batch;genome_build;metadata__phenotype;config__algorithm__tools_off;config__algorithm__sv_regions;analysis;config__algorithm__tools_on;config__algorithm__variant_regions;align_bam;work_bam_plus__disc;work_bam_plus__sr;config__algorithm__variant_regions_merged;regions__bins__target;regions__bins__antitarget;depth__bins__target;depth__bins__antitarget
- sentinel_inputs=analysis:var,genome_build:var,align_bam:var,work_bam_plus__disc:var,work_bam_plus__sr:var,metadata__batch:var,metadata__phenotype:var,config__algorithm__coverage_interval:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__sv_regions:var,config__algorithm__svcaller:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,depth__bins__target:var,depth__bins__antitarget:var,regions__bins__target:var,regions__bins__antitarget:var,genome_resources__rnaseq__gene_bed:var,reference__fasta__base:var,description:var,resources:var
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
- id: align_bam
  secondaryFiles:
  - .bai
  type:
    items: File
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
- id: metadata__batch
  type:
    items: string
    type: array
- id: metadata__phenotype
  type:
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    items: string
    type: array
- id: config__algorithm__variant_regions
  type:
    items: File
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    items: File
    type: array
- id: config__algorithm__sv_regions
  type:
    items: File
    type: array
- id: config__algorithm__svcaller
  type:
    items:
      items: string
      type: array
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
- id: depth__bins__target
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__bins__antitarget
  type:
    items:
    - File
    - 'null'
    type: array
- id: regions__bins__target
  type:
    items:
    - File
    - 'null'
    type: array
- id: regions__bins__antitarget
  type:
    items:
    - File
    - 'null'
    type: array
- id: genome_resources__rnaseq__gene_bed
  type:
    items: File
    type: array
- id: reference__fasta__base
  secondaryFiles:
  - .fai
  - ^.dict
  type:
    items: File
    type: array
- id: description
  type:
    items: string
    type: array
- id: resources
  type:
    items: string
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
        - name: regions__bins__target
          type:
          - File
          - 'null'
        - name: regions__bins__antitarget
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
