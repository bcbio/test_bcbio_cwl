#!/bin/bash
set -eu -o pipefail

PNAME=somatic
bcbiovm_python ~/bio/bcbio-nextgen/scripts/utils/cwltool2nextflow.py $PNAME-workflow/main-$PNAME.cwl $PNAME-workflow/main-$PNAME-samples.json
