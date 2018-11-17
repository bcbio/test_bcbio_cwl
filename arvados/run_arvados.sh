#!/bin/bash
set -eu -o pipefail

# need to have set in bashrc or here
#export ARVADOS_API_TOKEN=
#export ARVADOS_API_HOST=
unset ARVADOS_API_HOST_INSECURE

#PROJECT=qr1hi-j7d0g-7t73h4hrau3l063
PROJECT=d79c1-j7d0g-tdep8qk2idwyye7

bcbio_vm.py cwlrun arvados arvados_testcwl-workflow -- --project-uuid $PROJECT
