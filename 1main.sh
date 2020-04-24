#!/bin/bash
nano ~/.bashrc
    alias usergenerate= "sudo chmod +x .1subtask1.sh
                         ./1subtask1.sh"
    alias permit= "sudo chmod +x .1subtask2.sh
                         ./1subtask2.sh"
    alias autoschedule= "sudo chmod +x .1subtask3.sh
                         ./1subtask3.sh"
    alias attendance= "sudo chmod +x .1subtask4.sh
                         ./1subtask4.sh"
    alias record= "sudo chmod +x .1subtask5.sh
                         ./1subtask5.sh"
    alias finalattendance= "sudo chmod +x .1subtask6.sh
                         ./1subtask6.sh"
 
crontab -e
     # 00 00 * * * autoschedule
     # 00 06 * * * attendance
     # 00 00 * * * finalattendance   

