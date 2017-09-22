#!/bin/bash
set -eu -o pipefail

PNAME=svcall

rm -rf $PNAME-workflow
bcbio_vm.py cwl --systemconfig=../bcbio_system.yaml $PNAME.yaml

BASEDIR=`cd .. && pwd`
sed -i.bak "s#$BASEDIR/testdata#../../testdata#" $PNAME-workflow/main-$PNAME-samples.json
