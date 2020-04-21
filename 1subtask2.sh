for i in $(seq 50)
do
  setfacl -m u:ArmyGeneral:rwx /home/Army$i
  setfacl -m u:ChiefCommander:rwx /home/Army$i
  setfacl -m u:NavyMarshal:rwx /home/Navy$i
  setfacl -m u:ChiefCommander:rwx /home/Navy$i
  setfacl -m u:AirForceChief:rwx /home/AirForce$i
  setfacl -m u:ChiefCommander:rwx /home/AirForce$i
done
setfacl -m u:ChiefCommander:rwx /home/ArmyGeneral
setfacl -m u:ChiefCommander:rwx /home/NavyMarshal
setfacl -m u:ChiefCommander:rwx /home/AirForceChief


