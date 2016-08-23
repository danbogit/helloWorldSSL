#!/bin/ksh
echo "let's create self-signed certificate "
#Generate a Private Key
sudo openssl genrsa -des3 -out server.key 1024
#Generate a CSR (Certificate Signing Request)
sudo openssl req -new -key server.key -out server.csr
#Remove Passphrase from Key
sudo cp server.key server.key.org
sudo openssl rsa -in server.key.org -out server.key

#Finally Generate a Self-Signed Certificate
sudo openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

#enable ssl
sudo a2enmod ssl
sudo service apache2.restart


exit

