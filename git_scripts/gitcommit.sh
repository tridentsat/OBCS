#! /bin/bash
read -p "Enter git commit messege : " messege
if [ "$1" == "-a"  ] || [ "$1" = "--all" ]
then
	echo "commiting all files "
	git add .
else
	read -p "Enter no of files or directories you want to commit : " n
	index=1
	until [ $n -eq 0 ]
		do
			read -p "Enter name of $index th file or directory : " filename
			git add "$filename"
			n=$(( n-1 ))
			index=$(( index+1 ))
		done
fi
git commit -m "$messege"
git push -u origin master
