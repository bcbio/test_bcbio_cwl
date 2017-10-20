arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=sv__calls
- sentinel_inputs=sv_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- summarize_sv
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1029
  ramMin: 2048
  tmpdirMin: 5
inputs:
- id: sv_rec
  type:
    items:
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
        name: sv_rec
        type: record
      type: array
    type: array
outputs:
- id: sv__calls
  type:
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
