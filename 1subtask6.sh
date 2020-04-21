#!/bin/bash
i=+$(date +'%Y-%m-%d-%H.%M.%S')
cd /home/ChiefCommander
touch attendance_report.txt
for k in ArmyGeneral NavyMarshal AirforceChief
do
  cd /home/$k  
  while read f1 f2 
  do
  if (("$f1"=="$i"))
    then 
    echo $f1 $f2 >> attendance_report.txt 
  fi
  done < attendance_record.txt
done
