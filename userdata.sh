#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
<<<<<<< HEAD
TOKEN=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
git clone https://$TOKEN@github.com/Nuraybzdmr/aws-capstone-project-withmyteam.git
cd /home/ubuntu/aws-capstone-project-withmyteam
=======
TOKEN= xxxxxxxxx
git clone https://$TOKEN@github.com/Nuraybzdmr/aws-capstone-project-withmyteam
cd /home/ubuntu/
aws-capstone-project-withmyteam
>>>>>>> 0ff025041d1add6509d38542ca2e09f09ed31467
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws-capstone-project-withmyteam/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80