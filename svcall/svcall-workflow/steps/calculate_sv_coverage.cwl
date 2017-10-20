arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-parallel
- sentinel_outputs=regions__bins__target,regions__bins__antitarget,depth__bins__target,depth__bins__antitarget
- sentinel_inputs=sv_bin_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- calculate_sv_coverage
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 2
  outdirMin: 1031
  ramMin: 4096
  tmpdirMin: 7
- class: SoftwareRequirement
  packages:
  - package: mosdepth
    specs:
    - https://anaconda.org/bioconda/mosdepth
inputs:
- id: sv_bin_rec
  type:
    fields:
    - name: regions__bins__target
      type:
      - File
      - 'null'
    - name: regions__bins__antitarget
      type:
      - File
      - 'null'
    - name: description
      type: string
    - name: resources
      type: string
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
    name: sv_bin_rec
    type: record
outputs:
- id: regions__bins__target
  type:
  - File
  - 'null'
- id: regions__bins__antitarget
  type:
  - File
  - 'null'
- id: depth__bins__target
  type:
  - File
  - 'null'
- id: depth__bins__antitarget
  type:
  - File
  - 'null'
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
