#!/bin/bash

echo "Name folder project?"

read name

echo "Create folder"
mkdir $name

cd $name


# if c program

echo "Import libft"
git clone git@gitlab.com:sbelondr/libft.git
cd libft
rm -rf .git
cd ..

echo "Create scrs and includes folder"
mkdir srcs includes

echo "Create other file"
echo "sbelondr" > auteur
echo "# $name" > README.md

cp ../.gitignore .
cp ../Makefile .

read -p "Init Git? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Init git"
	echo "Remote (git@...): "
	read urlGit
	git init
	git remote add origin $urlGit
	git add .
	git commit -m "Initial commit"
	git push -u origin master
fi
