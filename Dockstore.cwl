baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: picard-markduplicates
inputs:
  input_bam:
    doc: Input BAM file
    inputBinding:
      position: 1
      prefix: --input_bam
    type: File
  options:
    doc: Additional options
    inputBinding:
      position: 2
      prefix: --options
    type: string?
label: Picard MarkDuplicates
outputs:
  marked_dup_metrics:
    doc: Output marked duplicate metrics
    outputBinding:
      glob: marked_dup_metrics/*
    type: File
  marked_duplicates:
    doc: Output marked duplicates
    outputBinding:
      glob: marked_duplicates/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/picard-markduplicates:6
s:author:
  class: s:Person
  s:name: Adam Halstead
