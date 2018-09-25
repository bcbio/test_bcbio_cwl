#!/bin/bash
set -eu -o pipefail

PNAME=somatic
#bcbio_vm.py cwlrun cromwell $PNAME-workflow
bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow
