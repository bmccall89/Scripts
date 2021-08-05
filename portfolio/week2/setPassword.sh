#!/bin/bash
# this to create the folder with a desired name
read -p "Folder name : " folderName
mkdir "$folderName"

# next step is to type a secret password and save it to a file
touch ~/Desktop/home/student/scripts/portfolio/week2/$folderName/secret.txt
read -sp "password : " password
echo $password > ~/Desktop/home/student/scripts/portfolio/week2/$folderName/secret.txt
echo $password | sha256sum > ~/Desktop/home/student/scripts/portfolio/week2/$folderName/secret.txt
echo
hash=$(echo $password | sha256sum)
exit 0