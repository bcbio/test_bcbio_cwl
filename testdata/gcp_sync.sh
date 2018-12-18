set -eu -o pipefail

for DIR in 100326_FC6107FAAXX automated genomes reference_material test_fusion; do
	gsutil rsync -d -r -a public-read $DIR gs://bcbiodata/test_bcbio_cwl/testdata/$DIR
done


