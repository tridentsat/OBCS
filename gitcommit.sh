#! /bin/bash
read -p "Enter git commit messege : " messege
git add .
echo "$messege"
git commit -m "$messege"
git remote add origin https://github.com/tridentsat/OBCS.git
git push -u origin master
