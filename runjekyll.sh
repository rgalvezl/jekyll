#!/bin/bash
ls contino
if [ $? -eq 0 ] 
then
sudo rm -Rf contino;
else echo "does not exit";
fi
sudo jekyll new contino
sudo cd contino/
sudo nohup bundle exec jekyll serve --host=0.0.0.0 &
