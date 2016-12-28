#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
WORK_DIR=$ORIG_DIR/bunny_work
mkdir -p $WORK_DIR
cd $WORK_DIR
rabix --no-container -b $WORK_DIR $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl.cwl $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl-samples.json

##JAR=/home/chapmanb/install/bio/bunny/rabix-backend-local/target/rabix-backend-local-1.0.0-rc2.jar
#LOGFILE=/home/chapmanb/install/bio/bunny/rabix-backend-local/config/logback.xml
#java -Dlogback.configurationFile= -jar $JAR --no-container -b $WORK_DIR $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl.cwl $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl-samples.json
