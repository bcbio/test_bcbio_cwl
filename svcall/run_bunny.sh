#!/bin/bash
set -eu -o pipefail

PNAME=svcall
bcbio_vm.py cwlrun bunny $PNAME-workflow
#bcbio_vm.py cwlrun bunny --no-container $PNAME-workflow
