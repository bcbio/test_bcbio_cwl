arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=sv_coverage_rec:depth__bins__normalized;description;resources;depth__bins__target;depth__bins__antitarget;regions__bins__target;regions__bins__antitarget;regions__bins__group;reference__fasta__base;config__algorithm__svcaller;config__algorithm__coverage_interval;genome_resources__rnaseq__gene_bed;metadata__batch;metadata__phenotype;config__algorithm__sv_regions;config__algorithm__variant_regions;align_bam;config__algorithm__variant_regions_merged;depth__variant_regions__regions;config__algorithm__callable_regions
- sentinel_inputs=sv_rawcoverage_rec:record
baseCommand:
- bcbio_nextgen.py
- runfn
- normalize_sv_coverage
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
  - package: cnvkit
    specs:
    - https://anaconda.org/bioconda/cnvkit
inputs:
- id: sv_rawcoverage_rec
  type:
    items:
      fields:
      - name: depth__bins__target
        type:
        - File
        - 'null'
      - name: depth__bins__antitarget
        type:
        - File
        - 'null'
      - name: description
        type: string
      - name: resources
        type: string
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
      name: sv_rawcoverage_rec
      type: record
    type: array
outputs:
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
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
