cwlVersion: v1.0
class: CommandLineTool
label: CliP
baseCommand: ["Rscript", "/CliP/Flow.R"]
requirements:
  - class: DockerRequirement
    dockerPull: smcheteval/clip:0.1

inputs:
  input_vcf:
    type: File
    inputBinding:
      position: 1

  battenberg_file:
    type: File
    inputBinding:
      position: 2

  purity_file:
    type: File
    inputBinding:
      position: 3

  output_dir:
    type: string
    default: ./
    inputBinding:
      position: 4

  data:
    type: string
    default: ./
    inputBinding:
      position: 5

outputs:
  population:
    type: File
    outputBinding:
      glob: 1B.txt

  proportion:
    type: File
    outputBinding:
      glob: 1C.txt

  cluster_assignment:
    type: File
    outputBinding:
      glob: 2A.txt

  cocluster_assignment:
    type: File
    outputBinding:
      glob: 2B.txt.gz
