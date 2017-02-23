arguments:
- position: 0
  valueFrom: sentinel-runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- process_alignment
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 2
  outdirMin: 1028
  ramMin: 4096
  tmpdirMin: 4
inputs:
- default: single-parallel
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: work_bam,align_bam,hla__fastq,work_bam_plus__disc,work_bam_plus__sr
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: files
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: files=
    separate: false
  secondaryFiles:
  - .gbi
  type:
    items: File
    type: array
- id: reference__fasta__base
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: reference__fasta__base=
    separate: false
  type: File
- id: align_split
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: align_split=
    separate: false
  type:
  - string
  - 'null'
- id: rgnames__pl
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: rgnames__pl=
    separate: false
  type: string
- id: rgnames__sample
  inputBinding:
    itemSeparator: ;;
    position: 6
    prefix: rgnames__sample=
    separate: false
  type: string
- id: rgnames__pu
  inputBinding:
    itemSeparator: ;;
    position: 7
    prefix: rgnames__pu=
    separate: false
  type: string
- id: rgnames__lane
  inputBinding:
    itemSeparator: ;;
    position: 8
    prefix: rgnames__lane=
    separate: false
  type: string
- id: rgnames__rg
  inputBinding:
    itemSeparator: ;;
    position: 9
    prefix: rgnames__rg=
    separate: false
  type: string
- id: rgnames__lb
  inputBinding:
    itemSeparator: ;;
    position: 10
    prefix: rgnames__lb=
    separate: false
  type: 'null'
- id: reference__bwa__indexes
  inputBinding:
    itemSeparator: ;;
    position: 11
    prefix: reference__bwa__indexes=
    separate: false
  type:
  - 'null'
  - File
- id: reference__snap__indexes
  inputBinding:
    itemSeparator: ;;
    position: 12
    prefix: reference__snap__indexes=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__aligner
  inputBinding:
    itemSeparator: ;;
    position: 13
    prefix: config__algorithm__aligner=
    separate: false
  type: string
- id: config__algorithm__mark_duplicates
  inputBinding:
    itemSeparator: ;;
    position: 14
    prefix: config__algorithm__mark_duplicates=
    separate: false
  type: string
- id: config__algorithm__quality_format
  inputBinding:
    itemSeparator: ;;
    position: 15
    prefix: config__algorithm__quality_format=
    separate: false
  type: string
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 16
    prefix: description=
    separate: false
  type: string
outputs:
- id: work_bam
  type: File
- id: align_bam
  type: File
- id: hla__fastq
  type:
  - File
  - 'null'
- id: work_bam_plus__disc
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: work_bam_plus__sr
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
