#!/bin/bash
#Author = Vivek Tyagi
#Content = Hosting a sample webiste on httpd server

echo We are hosting a website
echo
################################# 
echo Creating a directory in tmp
#################################

mkdir -p /tmp/hostwebsite
cd /tmp/hostwebsite
wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip > /dev/null
unzip 2129_crispy_kitchen.zip > /dev/null
cp -r 2129_crispy_kitchen* /var/www/html/
systemctl restart httpd
echo 
echo

