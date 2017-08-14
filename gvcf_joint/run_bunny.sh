#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
WORK_DIR=$ORIG_DIR/bunny_work
mkdir -p $WORK_DIR
cd $WORK_DIR
PNAME=gvcf-joint

#rabix -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json
rabix --no-container -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json
