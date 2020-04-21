#!/bin/bash
i=+$(date +'%Y-%m-%d-%H.%M.%S')
while read f1 f2 f3
if (("$f1"=="$i"))
then 
  if [[ "$f2"==*"Army"* ]];
     then if (("$f3"=="YES"))
           then
           cd /home/ArmyGeneral
           touch attendace_record.txt
           echo $f1 $f2 >> attendace_record.txt
          fi
 elif [[ "$f2"==*"Navy"* ]];
     then if (("$f3"=="YES"))
           then
           cd /home/NavyMarshal
           touch attendace_record.txt
           echo $f1 $f2 >> attendace_record.txt
          fi
elif [[ "$f2"==*"AirForce"* ]];
     then if (("$f3"=="YES"))
           then
           cd /home/AirForceChief
           touch attendace_record.txt
           echo $f1 $f2 >> attendace_record.txt
          fi
fi
fi
done < attendance.log
