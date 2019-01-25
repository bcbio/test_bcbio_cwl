#!/bin/bash
set -eu -o pipefail
aws s3 sync --acl public-read --delete ../testdata/100326_FC6107FAAXX s3://bcbio/data/test_bcbio_cwl/testdata/100326_FC6107FAAXX
gsutil rsync -d -r -a public-read ../testdata/automated s3://bcbio/data/test_bcbio_cwl/testdata/automated
gsutil rsync -d -r -a public-read ../testdata/genomes s3://bcbio/data/test_bcbio_cwl/testdata/genomes
gsutil rsync -d -r -a public-read ../testdata/reference_material s3://bcbio/data/test_bcbio_cwl/testdata/reference_material
