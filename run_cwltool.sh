#!/bin/bash
set -eu -o pipefail

bcbio_vm.py cwlrun cwltool run_info-cwl-workflow
#bcbio_vm.py cwlrun cwltool --no-container run_info-cwl-workflow
