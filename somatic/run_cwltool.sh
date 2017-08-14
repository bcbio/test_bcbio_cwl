#!/bin/bash
set -eu -o pipefail

PNAME=somatic
#bcbio_vm.py cwlrun cwltool $PNAME-workflow
bcbio_vm.py cwlrun cwltool --no-container $PNAME-workflow
