#!/bin/bash
set -eu -o pipefail

PNAME=somatic
cwltool2wdl.py $PNAME-workflow/main-$PNAME.cwl $PNAME-workflow/main-$PNAME-samples.json
