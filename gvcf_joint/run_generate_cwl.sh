#!/bin/bash
set -eu -o pipefail

PNAME=gvcf-joint

rm -rf $PNAME-workflow
bcbio_vm.py cwl --systemconfig=../bcbio_system.yaml gvcf-joint.yaml

#BASEDIR=`cd .. && pwd`
#sed -i.bak "s#$BASEDIR/testdata#../../testdata#" $PNAME-workflow/main-$PNAME-samples.json
