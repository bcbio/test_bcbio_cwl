#!/bin/bash
set -eu -o pipefail

PNAME=somatic
bcbio_vm.py cwlrun cromwell $PNAME-workflow \
	--cloud-project somatic-validation \
	--cloud-root gs://bcbiotest/gcp/work_cromwell
