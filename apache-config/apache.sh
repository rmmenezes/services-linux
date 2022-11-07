#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y

sudo mkdir /var/www/cursoceape

sudo cp index.php /var/www/cursoceape/index.php
#sudo chown rmba:rmba /var/www/cursoceape/index.php
sudo chmod -R 755 /var/www/cursoceape/


sudo cp cursoceape.conf /etc/apache2/sites-available/cursoceape.conf 
#sudo chown rmba:rmba /var/www/cursoceape/index.php
sudo chmod -R 755 /etc/apache2/sites-available/cursoceape.conf

sudo a2ensite cursoceape.conf 
sudo a2dissite 000-default.conf

sudo bash -c 'echo "ServerName localhost" >> /etc/apache2/apache2.conf'

sudo apache2ctl configtest 
sudo systemctl enable apache2
sudo systemctl restart apache2

sudo ufw allow 80/tcp 
sudo ufw allow 443/tcp
