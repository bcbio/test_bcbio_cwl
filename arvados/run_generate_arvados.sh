#!/bin/bash
set -eu -o pipefail

rm -rf freebayes
rm -rf vardict
rm -rf gatk-haplotype
rm -rf platypus
rm -rf arvados_testcwl
bcbio_vm.py template --systemconfig bcbio_system_arvados.yaml arvados_testcwl_template.yaml arvados_testcwl.csv
bcbio_vm.py cwl --systemconfig bcbio_system_arvados.yaml arvados_testcwl/config/arvados_testcwl.yaml
