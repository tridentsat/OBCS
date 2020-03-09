#! /bin/bash
read -p "Enter github username: " username
read -p "Enter git repository name: " repo

git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/"$username"/"$repo".git
git push -u origin master
