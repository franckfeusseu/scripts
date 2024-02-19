#!/bin/bash
echo "welcome to django docker installer !"
read -p "Enter the project name: " project_name
echo "directory $project_name"
project_dir=$HOME/Documents/$project_name
mkdir $project_dir && cp Dockerfile requirements.txt docker-compose.yml $project_dir
cd $project_dir
sudo docker-compose run web django-admin startproject $project_name .
sudo chown -R $USER:$USER $project_name manage.py