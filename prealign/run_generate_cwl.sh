#!/bin/bash
set -eu -o pipefail

PNAME=prealign

rm -rf $PNAME-workflow
bcbio_vm.py cwl --systemconfig=../bcbio_system.yaml $PNAME.yaml
