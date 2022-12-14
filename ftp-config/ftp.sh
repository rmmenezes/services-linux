#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install vsftpd -y --quiet

sudo mv /etc/vsftpd.conf /etc/default-vsftpd.conf
sudo cp vsftpd.conf /etc/vsftpd.conf
sudo chmod 655 /etc/vsftpd.conf

sudo systemctl restart vsftpd.service 

sudo ufw allow 20/tcp 
sudo ufw allow 21/tcp

sudo adduser ftp_user
sudo mkdir /home/ftp_user/ftp
sudo chmod a-w /home/ftp_user/ftp
sudo chown ftp_user:ftp_user /home/ftp_user/ftp

sudo touch /etc/vsftpd.userlist
sudo mv /etc/vsftpd.userlist /etc/default-vsftpd.userlist
sudo cp vsftpd.userlist /etc/vsftpd.userlist
sudo chmod 655 /etc/vsftpd.userlist

sudo cp book.txt /home/ftp_user/ftp/book.txt
sudo chown ftp_user:ftp_user /home/ftp_user/ftp/book.txt

sudo systemctl restart vsftpd.service

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/private/vsftpd.pem

sudo systemctl restart vsftpd.service