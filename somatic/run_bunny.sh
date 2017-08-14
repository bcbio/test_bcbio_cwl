#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
WORK_DIR=$ORIG_DIR/bunny_work
mkdir -p $WORK_DIR
cd $WORK_DIR

PNAME=somatic
rabix -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json
#rabix --no-container -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json

#BUILDDIR=~/install/bio/bunny-develop/rabix-backend-local
#JAR=$BUILDDIR/target/rabix-backend-local-1.0.0-rc3.jar
#LOGFILE=$BUILDDIR/config/logback.xml
##java -Dlogback.configurationFile=$LOGFILE -jar $JAR --no-container -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json
