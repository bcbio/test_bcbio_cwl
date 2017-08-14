#!/bin/bash
set -eu -o pipefail

rm -rf freebayes
rm -rf vardict
PNAME=somatic
bcbio_vm.py cwl --systemconfig=../bcbio_system.yaml $PNAME.yaml


BASEDIR=`cd .. && pwd`
sed -i.bak "s#$BASEDIR/testdata#../../testdata#" $PNAME-workflow/main-$PNAME-samples.json
#cwltool --pack run_info-cwl-workflow/main-run_info-cwl.cwl > run_info-cwl-workflow/main-run_info-cwl-standalone.cwl
