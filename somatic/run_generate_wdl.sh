#!/bin/bash
set -eu -o pipefail

PROJECT=somatic
cwltool2wdl.py $PROJECT-workflow/main-$PROJECT.cwl $PROJECT-workflow/main-$PROJECT-samples.json
