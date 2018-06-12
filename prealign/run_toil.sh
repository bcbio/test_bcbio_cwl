#!/bin/bash
set -eu -o pipefail

PNAME=prealign
#bcbio_vm.py cwlrun toil $PNAME-workflow
bcbio_vm.py cwlrun toil --no-container $PNAME-workflow
