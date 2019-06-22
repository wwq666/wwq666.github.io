#!/bin/bash

cd hugo
hugo

cd ../
cp -r hugo/public .

git checkout master
git add .
git commit -m 'blog'
git push origin master