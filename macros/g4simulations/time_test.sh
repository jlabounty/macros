#!/bin/bash

TIME_1=$(date +%s)
#echo $TIME_1

echo Running Fun4All_G4_EICDetector.C...
root -l -q Fun4All_G4_EICDetector_LQ.C >& FunOut.txt

TIME_2=$(date +%s)
#echo $TIME_2

DELTA_TIME=`expr $TIME_2 - $TIME_1`
echo "Time Elapsed: $DELTA_TIME seconds"
echo "              $(( $DELTA_TIME / 60 )) minutes and $(( $DELTA_TIME - ($DELTA_TIME / 60)*60 )) seconds"
