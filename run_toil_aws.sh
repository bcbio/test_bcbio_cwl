#!/bin/bash
# Run Toil on AWS with autoscaling
set -eu -o pipefail

cwltoil --batchSystem=mesos --mesosMaster=mesos-master:5050 \
  --provisioner aws --defaultPreemptable \
  --preemtableNodeType m4.large:0.1 --maxPreemptableNodes 2 \
  --jobStore=aws:us-east-1:toil-bcbio-jobstore \
  run_info-cwl-workflow run_info-cwl-workflow/main-run_info-cwl.cwl \
  run_info-cwl-workflow/main-run_info-cwl-samples.json
