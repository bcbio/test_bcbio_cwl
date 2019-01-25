#!/bin/bash
set -eu -o pipefail

PNAME=somatic
TEMPLATE=somatic
CLOUD=aws
rm -rf $PNAME
bcbio_vm.py template --systemconfig bcbio_system-$CLOUD.yaml ${TEMPLATE}-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-$CLOUD.yaml $PNAME/config/$PNAME.yaml
