ls contino
if [ $? -eq 0 ] 
then
rm -Rf contino;
else echo "does not exit";
fi
jekyll new contino;
sleep 5
cd contino/
nohup bundle exec jekyll  serve --host=0.0.0.0 &
