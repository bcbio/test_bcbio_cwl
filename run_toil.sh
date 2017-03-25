#!/bin/bash
set -eu -o pipefail

bcbio_vm.py cwlrun toil run_info-cwl-workflow
#bcbio_vm.py cwlrun toil --no-container run_info-cwl-workflow
# bcbio_vm.py cwlrun toil --no-container run_info-cwl-workflow -- --batchSystem slurm
