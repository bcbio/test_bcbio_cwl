#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
WORK_DIR=$ORIG_DIR/bunny_work
mkdir -p $WORK_DIR
cd $WORK_DIR
PROJECT=gvcf-joint

#rabix -b $WORK_DIR $ORIG_DIR/$PROJECT-workflow/main-$PROJECT.cwl $ORIG_DIR/$PROJECT-workflow/main-$PROJECT-samples.json
rabix --no-container -b $WORK_DIR $ORIG_DIR/$PROJECT-workflow/main-$PROJECT.cwl $ORIG_DIR/$PROJECT-workflow/main-$PROJECT-samples.json
