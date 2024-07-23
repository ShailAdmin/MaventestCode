#!/bin/bash
yum update -y
amazon-linux-extras install nginx -y
systemctl start nginx
systemctl enable nginx
echo "Hello World" > /usr/share/nginx/html/index.html