#!/bin/bash
ls contino
if [ $? -eq 0 ] 
then
sudo rm -Rf contino;
else echo "does not exist";
fi
sudo jekyll new contino
cd contino/
nohup sudo bundle exec jekyll serve --host=0.0.0.0 &
