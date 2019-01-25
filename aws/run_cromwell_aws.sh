#!/bin/bash
set -eu -o pipefail

PNAME=somatic
bcbio_vm.py cwlrun cromwell $PNAME-workflow \
	--cloud-project arn:aws:batch:us-east-1:678711657553:job-queue/GenomicsDefaultQueue-358a1deb9f4536b \
	--cloud-root s3://bcbio-batch-cromwell-test
