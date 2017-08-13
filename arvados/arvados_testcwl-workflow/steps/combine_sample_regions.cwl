arguments:
- position: 0
  valueFrom: sentinel-runtime=$(runtime)
baseCommand:
- bcbio_nextgen.py
- runfn
- combine_sample_regions
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
- default: '["config__algorithm__callable_regions","config__algorithm__non_callable_regions","config__algorithm__callable_count"]'
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: regions__callable
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: regions__callable=
      separate: false
    items: File
    type: array
- id: regions__nblock
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: regions__nblock=
      separate: false
    items: File
    type: array
- id: config__algorithm__nomap_split_size
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: config__algorithm__nomap_split_size=
      separate: false
    items: long
    type: array
- id: config__algorithm__nomap_split_targets
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: config__algorithm__nomap_split_targets=
      separate: false
    items: long
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: reference__fasta__base=
      separate: false
    items: File
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
- id: config__algorithm__callable_regions
  type:
    items: File
    type: array
- id: config__algorithm__non_callable_regions
  type:
    items: File
    type: array
- id: config__algorithm__callable_count
  type:
    items: int
    type: array
