arguments:
- position: 0
  valueFrom: sentinel-runtime=$(runtime)
baseCommand:
- bcbio_nextgen.py
- runfn
- prep_align_inputs
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 4
  ramMin: 4096
  tmpdirMin: 4
inputs:
- default: single-split
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: '["files","config__algorithm__quality_format","align_split"]'
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
  type:
    items: File
    type: array
- id: config__algorithm__align_split_size
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: config__algorithm__align_split_size=
    separate: false
  type: long
- id: config__algorithm__aligner
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: config__algorithm__aligner=
    separate: false
  type: string
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: description=
    separate: false
  type: string
outputs:
- id: files
  secondaryFiles:
  - .gbi
  type:
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__quality_format
  type:
    items: string
    type: array
- id: align_split
  type:
    items:
    - string
    - 'null'
    type: array
