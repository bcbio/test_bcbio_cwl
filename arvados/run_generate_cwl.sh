#!/bin/bash
set -eu -o pipefail

PNAME=arvados_testcwl
#ARV_INSTANCE=qr1hi
ARV_INSTANCE=d79c1
# need to have set in bashrc or here
#export ARVADOS_API_TOKEN=
#export ARVADOS_API_HOST=

rm -rf $PNAME
bcbio_vm.py template --systemconfig bcbio_system_arvados-${ARV_INSTANCE}.yaml ${PNAME}_template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system_arvados-${ARV_INSTANCE}.yaml $PNAME/config/$PNAME.yaml
