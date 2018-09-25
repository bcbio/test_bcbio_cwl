#!/bin/bash
set -eu -o pipefail

PNAME=somatic
TEMPLATE=somatic
rm -rf $PNAME
bcbio_vm.py template --systemconfig bcbio_system-gcp.yaml ${TEMPLATE}-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-gcp.yaml $PNAME/config/$PNAME.yaml
