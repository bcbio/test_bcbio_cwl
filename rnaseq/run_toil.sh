#!/bin/bash
set -eu -o pipefail

PNAME=rnaseq
bcbio_vm.py cwlrun toil $PNAME-workflow
#bcbio_vm.py cwlrun toil --no-container $PNAME-workflow
