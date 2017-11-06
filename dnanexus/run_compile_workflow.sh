#!/bin/bash
set -eu -o pipefail

# dx env
#DX_PROJECT_ID=brad_cwl_gvcf
DX_PROJECT_ID=project-F6vf5fj0BV9650154B13Vk9j
PNAME=gvcf-joint

bcbiovm_python ~/drive/az/nexus/dx-cwl/dx-cwl compile-workflow $PNAME-workflow/main-$PNAME.cwl --project $DX_PROJECT_ID --token $DX_AUTH_TOKEN
