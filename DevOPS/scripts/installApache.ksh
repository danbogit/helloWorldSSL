#!/bin/ksh
echo "let us install apache2 and php5"
sudo  apt-get update
sudo  apt-get install php5 
sudo  apt-get update
sudo  apt-get install apache2 
sudo  apt-get update
sudo  apt-get install libapache2-mod-php5
sudo  apt-get update
echo "finish installing apache2 and php5"
exit
