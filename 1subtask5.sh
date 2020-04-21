d#!/bin/bash
read n
if (( n==1 ))
  then i=+$(date --date="last monday" +'%Y-%m-%d-%H.%M.%S')
elif (( n==2 ))
  then i=+$(date --date="last tuesday" +'%Y-%m-%d-%H.%M.%S')
elif (( n==3 ))
  then i=+$(date --date="last wednesday" +'%Y-%m-%d-%H.%M.%S')
elif (( n==4 ))
  then i=+$(date --date="last thursday" +'%Y-%m-%d-%H.%M.%S')
elif (( n==5 ))
  then i=+$(date --date="last friday" +'%Y-%m-%d-%H.%M.%S')
elif (( n==6 ))
  then i=+$(date --date="last saturday" +'%Y-%m-%d-%H.%M.%S')
elif (( n==7 ))
  then i=+$(date --date="last sunday" +'%Y-%m-%d-%H.%M.%S')
fi
u=$(users)
while read f1 f2 f3
if (("$f1"=="$i"))
then 
  if [[ "$f2"==*"Army"* ]];
     then if (("$u"=="ArmyGeneral"))
             then if (("$f3"=="YES"))
             echo "DATE :$f1 Soldier:$f2"
             fi
          fi
 elif [[ "$f2"==*"Navy"* ]];
     then if (("$u"=="NavyMarshal"))
             then if (("$f3"=="YES"))
             echo "DATE :$f1 Soldier:$f2"
             fi
          fi
elif [[ "$f2"==*"AirForce"* ]];
     then if (("$u"=="AirForceChief"))
             then if (("$f3"=="YES"))
             echo "DATE :$f1 Soldier:$f2"
             fi
          fi
fi
fi
done < attendance.log
