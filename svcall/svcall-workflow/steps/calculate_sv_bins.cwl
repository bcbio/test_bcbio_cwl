arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=sv_bin_rec:regions__bins__target;regions__bins__antitarget;description;resources;reference__fasta__base;config__algorithm__svcaller;config__algorithm__coverage_interval;genome_resources__rnaseq__gene_bed;metadata__batch;metadata__phenotype;config__algorithm__sv_regions;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;depth__variant_regions__regions;config__algorithm__callable_regions
- sentinel_inputs=align_bam:var,reference__fasta__base:var,metadata__batch:var,metadata__phenotype:var,config__algorithm__callable_regions:var,config__algorithm__coverage_interval:var,config__algorithm__sv_regions:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__svcaller:var,depth__variant_regions__regions:var,genome_resources__rnaseq__gene_bed:var,description:var,resources:var
baseCommand:
- bcbio_nextgen.py
- runfn
- calculate_sv_bins
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1031
  ramMin: 2048
  tmpdirMin: 7
- class: SoftwareRequirement
  packages:
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: cnvkit
    specs:
    - https://anaconda.org/bioconda/cnvkit
inputs:
- id: align_bam
  secondaryFiles:
  - .bai
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
- id: metadata__batch
  type:
    items: string
    type: array
- id: metadata__phenotype
  type:
    items: string
    type: array
- id: config__algorithm__callable_regions
  type:
    items: File
    type: array
- id: config__algorithm__coverage_interval
  type:
    items: string
    type: array
- id: config__algorithm__sv_regions
  type:
    items: File
    type: array
- id: config__algorithm__variant_regions
  type:
    items: File
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    items: File
    type: array
- id: config__algorithm__svcaller
  type:
    items:
      items: string
      type: array
    type: array
- id: depth__variant_regions__regions
  type:
    items: File
    type: array
- id: genome_resources__rnaseq__gene_bed
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
- id: sv_bin_rec
  type:
    items:
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
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
