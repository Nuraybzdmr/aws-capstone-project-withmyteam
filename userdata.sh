#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/Nuraybzdmr/aws-capstone-project-withmyteam
cd /home/ubuntu/
aws-capstone-project-withmyteam
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/my-aws-capstone-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
