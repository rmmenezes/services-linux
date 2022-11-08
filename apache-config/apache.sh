#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y

sudo mkdir /var/www/cursoceape

sudo cp index.php /var/www/cursoceape/index.php
sudo chmod -R 755 /var/www/cursoceape/


sudo cp cursoceape.conf /etc/apache2/sites-available/cursoceape.conf 
sudo chmod -R 755 /etc/apache2/sites-available/cursoceape.conf

sudo a2ensite cursoceape.conf 
sudo a2dissite 000-default.conf

sudo bash -c 'echo "ServerName localhost" >> /etc/apache2/apache2.conf'

sudo apache2ctl configtest 
sudo systemctl enable apache2
sudo systemctl restart apache2

sudo ufw allow 80/tcp 
sudo ufw allow 443/tcp

sudo a2enmod ssl

sudo systemctl restart apache2

sudo mkdir /etc/apache2/certificate
sudo openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/apache2/certificate/apache-certificate.crt -keyout /etc/apache2/certificate/apache.key

sudo systemctl restart apache2