#!/bin/bash
set -eu -o pipefail

PNAME=prealign
TEMPLATE=prealign
rm -rf $PNAME $PNAME-workflow
bcbio_vm.py template --systemconfig ../bcbio_system-dnanexus.yaml $TEMPLATE-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig ../bcbio_system-dnanexus.yaml $PNAME/config/$PNAME.yaml
