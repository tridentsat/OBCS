#! /bin/bash
read -p "Enter git repository name: " repo
read -p "Enter git commit messege : " messege
git add .
git commit -m "$messege"
git remote add origin https://github.com/tridentsat/$repo.git
git push -u origin master
