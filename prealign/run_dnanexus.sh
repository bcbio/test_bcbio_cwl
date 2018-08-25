#!/bin/bash
set -eu -o pipefail

PNAME=prealign
TEMPLATE=prealign
PROJECT=bcbio_resources
FOLDER=/validate/tests/$PNAME
dx select $PROJECT
dx mkdir -p $FOLDER
for F in $TEMPLATE-template.yaml $PNAME.csv bcbio_system-dnanexus.yaml
do
	dx rm -a /$FOLDER/$F || true
	dx upload --path /$FOLDER/ $F

done
dx ls $FOLDER
dx rm -a -r /$FOLDER/dx-cwl-run || true
#dx run bcbio_resources:/applets/bcbio-run-workflow -iyaml_template=/$FOLDER/$TEMPLATE-template.yaml -isample_spec=/$FOLDER/$PNAME.csv -isystem_configuration=/$FOLDER/bcbio_system-dnanexus.yaml -ioutput_folder=/$FOLDER/dx-cwl-run
dx run bcbio-run-workflow/0.0.1+build.20180823.1603 -iyaml_template=/$FOLDER/$TEMPLATE-template.yaml -isample_spec=/$FOLDER/$PNAME.csv -isystem_configuration=/$FOLDER/bcbio_system-dnanexus.yaml -ioutput_folder=/$FOLDER/dx-cwl-run
#dx run bcbio-run-workflow -iyaml_template=/$FOLDER/$TEMPLATE-template.yaml -isample_spec=/$FOLDER/$PNAME.csv -isystem_configuration=/$FOLDER/bcbio_system-dnanexus.yaml -ioutput_folder=/$FOLDER/dx-cwl-run
