#!/bin/bash
# Run Toil on AWS with autoscaling
set -eu -o pipefail

LEADER_PRIVATE_IP=10.0.0.XX
JOB_STORE=aws:us-east-1:toil-bcbio-jobstore
NODE_TYPE=m4.large
SPOT_BID=0.1
MAX_NODES=2

cwltoil --batchSystem=mesos --mesosMaster=$LEADER_PRIVATE_IP:5050 \
  --provisioner aws \
  --defaultPreemptable  --preemptableNodeType $NODE_TYPE:$SPOT_BID --maxPreemptableNodes $MAX_NODES \
  --nodeType $NODE_TYPE --maxNodes $MAX_NODES \
  --jobStore $JOB_STORE \
  run_info-cwl-workflow/main-run_info-cwl.cwl \
  run_info-cwl-workflow/main-run_info-cwl-samples.json
