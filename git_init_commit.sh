#! /bin/bash
read -p "Enter git repository name: " repo
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/tridentsat/$repo.git
git push -u origin master
