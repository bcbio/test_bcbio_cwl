#!/bin/bash
set -eu -o pipefail

PROJECT=somatic
bcbiovm_python ~/bio/bcbio-nextgen/scripts/utils/cwltool2nextflow.py $PROJECT-workflow/main-$PROJECT.cwl $PROJECT-workflow/main-$PROJECT-samples.json
