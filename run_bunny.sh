#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
WORK_DIR=$ORIG_DIR/bunny_work
mkdir -p $WORK_DIR
cd $WORK_DIR

#rabix -b $WORK_DIR $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl.cwl $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl-samples.json
rabix --no-container -b $WORK_DIR $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl.cwl $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl-samples.json

#BUILDDIR=~/install/bio/bunny-develop/rabix-backend-local
#JAR=$BUILDDIR/target/rabix-backend-local-1.0.0-rc3.jar
#LOGFILE=$BUILDDIR/config/logback.xml
##java -Dlogback.configurationFile=$LOGFILE -jar $JAR --no-container -b $WORK_DIR $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl.cwl $ORIG_DIR/run_info-cwl-workflow/main-run_info-cwl-samples.json
