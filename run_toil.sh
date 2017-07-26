#!/bin/bash
# Example batch submission directives for PBS batch system (run as $qsub run_toil.sh).
#PBS -q normalsp
#PBS -l ncpus=1
#PBS -l mem=4G
#PBS -l walltime=240:00:00
#PBS -e torque_run_toil_stdout.log
#PBS -o torque_run_toil_stderr.log

set -eu -o pipefail

#bcbio_vm.py cwlrun toil run_info-cwl-workflow
bcbio_vm.py cwlrun toil --no-container run_info-cwl-workflow
# bcbio_vm.py cwlrun toil --no-container run_info-cwl-workflow -- --batchSystem slurm
