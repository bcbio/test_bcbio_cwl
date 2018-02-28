$namespaces:
  dx: https://www.dnanexus.com/cwl#
arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-parallel
- sentinel_outputs=align_bam,work_bam_plus__disc,work_bam_plus__sr,hla__fastq
- sentinel_inputs=files:var,description:var,resources:var
baseCommand:
- bcbio_nextgen.py
- runfn
- organize_noalign
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1024
  ramMin: 2048
  tmpdirMin: 0
- class: dx:InputResourceRequirement
  indirMin: 0
inputs:
- id: files
  type:
    items: File
    type: array
- id: description
  type: string
- id: resources
  type: string
outputs:
- id: align_bam
  secondaryFiles:
  - .bai
  type: File
- id: work_bam_plus__disc
  type: 'null'
- id: work_bam_plus__sr
  type: 'null'
- id: hla__fastq
  type: 'null'
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
