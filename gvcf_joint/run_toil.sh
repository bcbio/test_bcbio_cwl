#!/bin/bash
set -eu -o pipefail

PNAME=gvcf-joint
#bcbio_vm.py cwlrun toil $PNAME-workflow
bcbio_vm.py cwlrun toil --no-container $PNAME-workflow
# bcbio_vm.py cwlrun toil --no-container $PNAME-workflow -- --batchSystem slurm
