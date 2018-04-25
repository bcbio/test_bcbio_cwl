#!/bin/bash
set -eu -o pipefail

PNAME=svcall
bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow
