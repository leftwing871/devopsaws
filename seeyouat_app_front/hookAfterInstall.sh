#!/bin/bash

REPOSITORY=/home/ec2-user/

date >> /home/ec2-user/hookAfterInstall.txt

unzip ./seeyouat_app_front.zip

cp seeyouat_app_front/*.* $REPOSITORY

# sudo service tomcat restart
