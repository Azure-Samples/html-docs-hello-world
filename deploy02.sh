#!/bin/bash

domain=$1
root="/var/lib/jenkins/workspace/$domain"
block="/etc/nginx/sites-available/$domain"

# Create the Document Root directory
sudo mkdir -p $root

# Assign ownership to your regular user account
sudo chown -R $USER:$USER $root

# Create the Nginx server block file:
sudo tee $block > /dev/null <<EOF 
server {
        listen 80;
        listen [::]:80;

        root /var/lib/jenkins/workspace/html-docs-hello-world;
        index index.html index.htm;

        server_name $domain www.$domain;

        location / {
                try_files $uri $uri/ =404;
        }
}


EOF

# Link to make it available
sudo ln -s $block /etc/nginx/sites-enabled/

# Test configuration and reload if successful
sudo nginx -t && sudo service nginx reload
