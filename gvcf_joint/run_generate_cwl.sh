#!/bin/bash
set -eu -o pipefail

PROJECT=gvcf-joint

rm -rf $PROJECT-workflow
bcbio_vm.py cwl --systemconfig=../bcbio_system.yaml gvcf-joint.yaml

CURDIR=`pwd`
sed -i.bak "s#$CURDIR/testdata#../../testdata#" $PROJECT-workflow/main-$PROJECT-samples.json
