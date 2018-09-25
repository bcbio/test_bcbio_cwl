#!/bin/bash
set -eu -o pipefail
gsutil rsync -d -r -a public-read ../testdata/100326_FC6107FAAXX gs://bcbiodata/test_bcbio_cwl/testdata/100326_FC6107FAAXX
gsutil rsync -d -r -a public-read ../testdata/automated gs://bcbiodata/test_bcbio_cwl/testdata/automated
gsutil rsync -d -r -a public-read ../testdata/genomes gs://bcbiodata/test_bcbio_cwl/testdata/genomes
gsutil rsync -d -r -a public-read ../testdata/reference_material gs://bcbiodata/test_bcbio_cwl/testdata/reference_material
