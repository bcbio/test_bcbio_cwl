#!/bin/bash
set -eu -o pipefail

rm -rf freebayes
rm -rf vardict
bcbio_vm.py cwl --systemconfig=bcbio_system.yaml run_info-cwl.yaml

CURDIR=`pwd`
sed -i.bak "s#$CURDIR/testdata#../testdata#" run_info-cwl-workflow/main-run_info-cwl-samples.json
#cwltool --pack run_info-cwl-workflow/main-run_info-cwl.cwl > run_info-cwl-workflow/main-run_info-cwl-standalone.cwl
