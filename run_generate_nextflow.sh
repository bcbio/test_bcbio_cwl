#!/bin/bash
set -eu -o pipefail

bcbiovm_python ~/bio/bcbio-nextgen/scripts/utils/cwltool2nextflow.py run_info-cwl-workflow/main-run_info-cwl.cwl run_info-cwl-workflow/main-run_info-cwl-samples.json
