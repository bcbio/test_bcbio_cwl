#!/bin/bash
set -eu -o pipefail

PNAME=somatic
bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow

#export PATH=/usr/local/share/bcbio-vm/bin:$PATH
#cromwell run --type CWL --inputs ../$PNAME-workflow/main-$PNAME-samples.json ../$PNAME-workflow/main-$PNAME.cwl

