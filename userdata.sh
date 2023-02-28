#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
<<<<<<< HEAD
TOKEN=xxxxxxxxx
=======
TOKEN=xxxxxxxxxxxxxxxxxxxxxxxx
>>>>>>> 12fd79507de82ecad678098d5a89734f96daee53
git clone https://$TOKEN@github.com/Nuraybzdmr/aws-capstone-project-withmyteam.git
cd /home/ubuntu/my-aws-capstone-project-withmyteam
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/my-aws-capstone-project-withmyteam/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
