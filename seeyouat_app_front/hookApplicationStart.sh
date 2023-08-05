#!/bin/bash

echo "> Build 파일 복사"

date >> /home/ec2-user/hookApplicationStart.txt

nohup java -jar /home/ec2-user/build/app-0.0.1-SNAPSHOT.jar > /home/ec2-user/nohup.out 2>&1 &
