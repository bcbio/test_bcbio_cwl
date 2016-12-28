arguments:
- position: 0
  valueFrom: sentinel-runtime=$(runtime)
baseCommand:
- bcbio_nextgen.py
- runfn
- multiqc_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 4
  ramMin: 4096
inputs:
- default: multi-combined
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: '["summary__multiqc"]'
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: genome_build
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: genome_build=
      separate: false
    items: string
    type: array
- id: summary__qc__samtools
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: summary__qc__samtools=
      separate: false
    items: File
    type: array
- id: summary__qc__fastqc
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: summary__qc__fastqc=
      separate: false
    items: File
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__coverage_interval=
      separate: false
    items: string
    type: array
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: description=
      separate: false
    items: string
    type: array
outputs:
- id: summary__multiqc
  type:
    items:
    - File
    - 'null'
    type: array
