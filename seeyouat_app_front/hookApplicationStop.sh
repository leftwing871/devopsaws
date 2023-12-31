#!/bin/bash

date >> /home/ec2-user/hookApplicationStop.txt

PROJECT_NAME=app-0.0.1

echo "> 현재 구동중인 애플리케이션 pid 확인"

CURRENT_PID=$(pgrep -fl $PROJECT_NAME | grep java | awk '{print $1}')

echo "현재 구동중인 어플리케이션 pid: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
    echo "> 현재 구동중인 애플리케이션이 없으므로 종료하지 않습니다."
else
    echo "> kill -15 $CURRENT_PID"
    kill -15 $CURRENT_PID
    sleep 5
fi


# PROCESSFILENAME=/home/ec2-user/pid.file

# if [ -f "$PROCESSFILENAME" ]; then
#     kill $(cat $PROCESSFILENAME)
# else
#     echo "Process file does not exist."
# fi
