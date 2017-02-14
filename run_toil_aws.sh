#!/bin/bash
# Run Toil on AWS with autoscaling
set -eu -o pipefail

LEADER_PRIVATE_IP=10.0.0.XX
JOB_STORE=aws:us-east-1:toil-bcbio-jobstore

cwltoil --batchSystem=mesos --mesosMaster=$LEADER_PRIVATE_IP:5050 \
  --provisioner aws --defaultPreemptable \
  --preemptableNodeType m4.large:0.1 --maxPreemptableNodes 2 \
  --jobStore= $JOB_STORE \
  run_info-cwl-workflow/main-run_info-cwl.cwl \
  run_info-cwl-workflow/main-run_info-cwl-samples.json
