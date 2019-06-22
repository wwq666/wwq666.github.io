#!/bin/bash

cd hugo
hugo

cd ../
cp -r -f ./hugo/public/ ./.

git checkout master
git pull origin master
git add .
git commit -m 'blog'
git push origin master