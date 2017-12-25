#!/bin/bash
set -eu -o pipefail

PNAME=arvados_testcwl
rm -rf $PNAME
bcbio_vm.py template --systemconfig bcbio_system_arvados.yaml ${PNAME}_template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system_arvados.yaml $PNAME/config/$PNAME.yaml
