#!/bin/bash
set -eu -o pipefail

# need to have set in bashrc or here
#export ARVADOS_API_TOKEN=
#export ARVADOS_API_HOST=
unset ARVADOS_API_HOST_INSECURE

/home/chapmanb/install/bio/arvados/sdk/cwl/miniconda/bin/arv-keepdocker bcbio/bcbio
