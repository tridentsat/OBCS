#! /bin/bash
echo -p "Enter git repository name: " repo
echo -p "Enter git commit messege : " messege
git add .
git commit -m "$messege"
git remote add origin https://github.com/tridentsat/$repo.git
git push -u origin master
