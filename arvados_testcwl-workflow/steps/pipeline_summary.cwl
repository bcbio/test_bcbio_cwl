arguments:
- position: 0
  valueFrom: sentinel-runtime=$(runtime)
baseCommand:
- bcbio_nextgen.py
- runfn
- pipeline_summary
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 4
  ramMin: 4096
inputs:
- default: multi-parallel
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: '["summary__qc__samtools","summary__qc__fastqc","coverage__all","coverage__problems"]'
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: align_bam
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: align_bam=
    separate: false
  secondaryFiles:
  - .bai
  type: File
- id: analysis
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: analysis=
    separate: false
  type: string
- id: reference__fasta__base
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: reference__fasta__base=
    separate: false
  type: File
- id: config__algorithm__qc
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: config__algorithm__qc=
    separate: false
  type:
    items: string
    type: array
- id: config__algorithm__variant_regions
  inputBinding:
    itemSeparator: ;;
    position: 6
    prefix: config__algorithm__variant_regions=
    separate: false
  type: File
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 7
    prefix: description=
    separate: false
  type: string
outputs:
- id: summary__qc__samtools
  type: File
- id: summary__qc__fastqc
  type: File
- id: coverage__all
  type:
  - File
  - 'null'
- id: coverage__problems
  type:
  - File
  - 'null'
