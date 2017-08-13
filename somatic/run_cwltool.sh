#!/bin/bash
set -eu -o pipefail

PROJECT=somatic
#bcbio_vm.py cwlrun cwltool $PROJECT-workflow
bcbio_vm.py cwlrun cwltool --no-container $PROJECT-workflow
