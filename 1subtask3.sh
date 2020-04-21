#!/bin/bash
i=+$(date +'%Y-%m-%d-%H.%M.%S')
while read f1 f2 f3
if (("$f1"=="$i"))
then
cd /home/$f2
touch post_allotted.txt
echo $f1 $f3 >>allotted.txt
fi
done <position.log


