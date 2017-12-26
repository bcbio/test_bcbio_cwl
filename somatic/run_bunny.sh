#!/bin/bash
set -eu -o pipefail

PNAME=somatic
bcbio_vm.py cwlrun bunny $PNAME-workflow
#bcbio_vm.py cwlrun bunny --no-container $PNAME-workflow
