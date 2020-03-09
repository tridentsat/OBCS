#! /bin/bash
read -p "Enter git commit messege : " messege
git add .
echo "$messege"
git commit -m "$messege"
git push -u origin master
