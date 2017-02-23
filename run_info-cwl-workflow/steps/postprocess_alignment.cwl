arguments:
- position: 0
  valueFrom: sentinel-runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- postprocess_alignment
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 2
  outdirMin: 1024
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
- default: config__algorithm__coverage_interval,config__algorithm__variant_regions,config__algorithm__variant_regions_merged,config__algorithm__variant_regions_orig,config__algorithm__coverage,config__algorithm__coverage_merged,config__algorithm__coverage_orig,config__algorithm__seq2c_bed_ready,regions__callable,regions__sample_callable,regions__nblock,regions__highdepth
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
- id: config__algorithm__coverage_interval
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: config__algorithm__coverage_interval=
    separate: false
  type: 'null'
- id: config__algorithm__variant_regions
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: config__algorithm__variant_regions=
    separate: false
  type: File
- id: config__algorithm__variant_regions_merged
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: config__algorithm__variant_regions_merged=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__variant_regions_orig
  inputBinding:
    itemSeparator: ;;
    position: 6
    prefix: config__algorithm__variant_regions_orig=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__coverage
  inputBinding:
    itemSeparator: ;;
    position: 7
    prefix: config__algorithm__coverage=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_merged
  inputBinding:
    itemSeparator: ;;
    position: 8
    prefix: config__algorithm__coverage_merged=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_orig
  inputBinding:
    itemSeparator: ;;
    position: 9
    prefix: config__algorithm__coverage_orig=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__seq2c_bed_ready
  inputBinding:
    itemSeparator: ;;
    position: 10
    prefix: config__algorithm__seq2c_bed_ready=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__recalibrate
  inputBinding:
    itemSeparator: ;;
    position: 11
    prefix: config__algorithm__recalibrate=
    separate: false
  type: string
- id: reference__fasta__base
  inputBinding:
    itemSeparator: ;;
    position: 12
    prefix: reference__fasta__base=
    separate: false
  type: File
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 13
    prefix: description=
    separate: false
  type: string
outputs:
- id: config__algorithm__coverage_interval
  type: string
- id: config__algorithm__variant_regions
  type: File
- id: config__algorithm__variant_regions_merged
  type:
  - File
  - 'null'
- id: config__algorithm__variant_regions_orig
  type:
  - File
  - 'null'
- id: config__algorithm__coverage
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_merged
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_orig
  type:
  - File
  - 'null'
- id: config__algorithm__seq2c_bed_ready
  type:
  - File
  - 'null'
- id: regions__callable
  type: File
- id: regions__sample_callable
  type: File
- id: regions__nblock
  type: File
- id: regions__highdepth
  type:
  - File
  - 'null'
