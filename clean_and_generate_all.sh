# Prepare directory with reference to local data for upload to S3
#!/bin/bash
set -eu -o pipefail

rm -rf align
rm -rf freebayes
rm -rf gatk-haplotype
rm -rf mutect
rm -rf platypus
rm -rf vardict
rm -rf inputs
rm -rf upload
rm -rf validate
rm -rf run_info-cwl-workflow
rm -rf arvados_testcwl
rm -rf arvados_testcwl-workflow
rm -rf cwltoil_work
rm -rf cwltool_work
rm -rf bunny_work
rm -rf multiqc*
rm -f qc-coverage-report-run.R
rm -f report-ready.Rmd
rm -f Test*sort.bam*
rm -f seqbuster*
rm -f Test*bcbio.txt
rm -f metrics.tsv
bash run_generate_cwltool.sh
bash run_generate_arvados.sh
#bash run_generate_nextflow.sh
bash run_generate_wdl.sh
rm -rf inputs
rm -rf upload
#date > VERSION
#
#cd ..
#rm -f test_bcbio_cwl.tar.gz
#tar -czvpf test_bcbio_cwl.tar.gz test_bcbio_cwl
#aws s3 cp test_bcbio_cwl.tar.gz s3://bcbio/cwl/ --acl public-read
