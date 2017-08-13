class: Workflow
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: bcbio/bcbio
  dockerPull: bcbio/bcbio
inputs:
- id: files
  type:
    items: File
    type: array
- id: config__algorithm__align_split_size
  type: long
- id: config__algorithm__aligner
  type: string
- id: description
  type: string
- id: reference__fasta__base
  type: File
- id: rgnames__pl
  type: string
- id: rgnames__sample
  type: string
- id: rgnames__pu
  type: string
- id: rgnames__lane
  type: string
- id: rgnames__rg
  type: string
- id: rgnames__lb
  type: 'null'
- id: reference__snap__indexes
  type:
  - 'null'
  - File
- id: reference__bwa__indexes
  type:
  - File
  - 'null'
- id: config__algorithm__mark_duplicates
  type: string
outputs:
- id: align_bam
  outputSource: merge_split_alignments/align_bam
  secondaryFiles:
  - .bai
  type: File
- id: work_bam_plus__disc
  outputSource: merge_split_alignments/work_bam_plus__disc
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: work_bam_plus__sr
  outputSource: merge_split_alignments/work_bam_plus__sr
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: hla__fastq
  outputSource: merge_split_alignments/hla__fastq
  type:
  - File
  - 'null'
requirements:
- class: EnvVarRequirement
  envDef:
  - envName: MPLCONFIGDIR
    envValue: .
- class: ScatterFeatureRequirement
- class: StepInputExpressionRequirement
- class: SubworkflowFeatureRequirement
- class: InlineJavascriptRequirement
steps:
- id: prep_align_inputs
  in:
  - id: files
    source: files
  - id: config__algorithm__align_split_size
    source: config__algorithm__align_split_size
  - id: config__algorithm__aligner
    source: config__algorithm__aligner
  - id: description
    source: description
  out:
  - id: files
  - id: config__algorithm__quality_format
  - id: align_split
  run: steps/prep_align_inputs.cwl
- id: process_alignment
  in:
  - id: files
    source: prep_align_inputs/files
  - id: reference__fasta__base
    source: reference__fasta__base
  - id: align_split
    source: prep_align_inputs/align_split
  - id: rgnames__pl
    source: rgnames__pl
  - id: rgnames__sample
    source: rgnames__sample
  - id: rgnames__pu
    source: rgnames__pu
  - id: rgnames__lane
    source: rgnames__lane
  - id: rgnames__rg
    source: rgnames__rg
  - id: rgnames__lb
    source: rgnames__lb
  - id: reference__snap__indexes
    source: reference__snap__indexes
  - id: reference__bwa__indexes
    source: reference__bwa__indexes
  - id: config__algorithm__aligner
    source: config__algorithm__aligner
  - id: config__algorithm__mark_duplicates
    source: config__algorithm__mark_duplicates
  - id: config__algorithm__quality_format
    source: prep_align_inputs/config__algorithm__quality_format
  - id: description
    source: description
  out:
  - id: work_bam
  - id: align_bam
  - id: hla__fastq
  - id: work_bam_plus__disc
  - id: work_bam_plus__sr
  run: steps/process_alignment.cwl
  scatter:
  - files
  - align_split
  - config__algorithm__quality_format
  scatterMethod: dotproduct
- id: merge_split_alignments
  in:
  - id: work_bam
    source: process_alignment/work_bam
  - id: align_bam
    source: process_alignment/align_bam
  - id: work_bam_plus__disc
    source: process_alignment/work_bam_plus__disc
  - id: work_bam_plus__sr
    source: process_alignment/work_bam_plus__sr
  - id: hla__fastq
    source: process_alignment/hla__fastq
  - id: description
    source: description
  out:
  - id: align_bam
  - id: work_bam_plus__disc
  - id: work_bam_plus__sr
  - id: hla__fastq
  run: steps/merge_split_alignments.cwl
