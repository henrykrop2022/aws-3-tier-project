#!/bin/bash
yum install unzip wget httpd -y
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip -d /var/www/html
cp -r /var/www/html/static-resume-main/iPortfolio/* /var/www/html/
systemctl start httpd
systemctl enable httpd
