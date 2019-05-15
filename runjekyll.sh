#!/bin/bash
ls contino
if [ $? -eq 0 ] 
then
sudo rm -Rf contino;
else echo "does not exist";
fi
sudo jekyll new contino
cd contino/

sudo touch contino.md
sudo chmod 777 contino.md
cat <<EOF > contino.md
---
layout: page
title: Contino Doc
---

![My helpful screenshot](https://media.licdn.com/dms/image/C4E0BAQFZkCcX-6kBJw/company-logo_200_200/0?e=2159024400&v=beta&t=K0K246Q5bobjGS4fPBNjA8cQKdqN1P67WWHqkNWcR0k)


- **Overview**

You can populate your OpenShift installation with a useful set of Red Hat-provided image streams and templates to make it easy for developers to create new applications. By default, the quick installation and advanced installation methods automatically create these sets in the openshift project, which is a default project to which all users have view access.

Use the following instructions to create the objects yourself. The files are installed on the file system of your master.
EOF

sudo bundle exec jekyll serve --host=0.0.0.0  > /dev/null 2>&1 &
