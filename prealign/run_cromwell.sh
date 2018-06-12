#!/bin/bash
set -eu -o pipefail

PNAME=prealign
bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow
