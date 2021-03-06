#!/bin/bash

# Submit efficiency ntuple jobs on the mu+jet skim
EXPECTED_ARGS=1
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 JOB_NAME"
fi

farmoutAnalysisJobs $1 \
  --infer-cmssw-path \
  --input-dbs-path=/SinglePhoton_FlatPt-0to200_13TeV_FlatRandomPtGun/RunIISpring18DR-NZSNoPU_100X_upgrade2018_realistic_v10-v1/GEN-SIM-RAW \
  --assume-input-files-exist \
  --skip-existing-output \
  ./piMinus_submit_cfg.py  \
  'inputFiles=$inputFileNames' 'outputFile=$outputFileName'

