#!/bin/bash
set -eu -o pipefail

PNAME=gvcf-joint
bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow
