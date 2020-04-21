#!/bin/bash
adduser ChiefCommander --force-badname
chmod -R 700 /home/ChiefCommander
adduser ArmyGeneral --force-badname
chmod -R 700 /home/ArmyGeneral
adduser NavyMarshal --force-badname
chmod -R 700 /home/NavyMarshal
adduser AirForceChief --force-badname
chmod -R 700 /home/AirForceChief
for i in $(seq 50)
do 
  adduser Army$i --force-badname
  chmod -R 700 /home/Army$i
  adduser Navy$i --force-badname
  chmod -R 700 /home/Navy$i
  adduser AirForce$i --force-badname
  chmod -R 700 /home/AirForce$i
done
