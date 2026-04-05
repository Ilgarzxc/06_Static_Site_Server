# My Static Site Server

This repository contains a simple static website and the setup required to serve it on a remote Linux server using **Nginx**. It also includes a deployment script using **rsync** to easily update the server with local changes.

## Project Overview

The goal of this project is to understand the basics of setting up a web server and deploying a static site. The project was inspired by the [Static Site Server project on roadmap.sh](https://roadmap.sh/projects/static-site-server).

### Features

- Basic HTML/CSS/JS static site
- Images, fonts, and assets organized in folders
- Nginx configuration to serve the site
- `deploy.sh` script to sync local changes to the remote server using rsync
- Ready to serve from a domain or directly via the server’s IP

## Setup

1. **Server Preparation**  
   - Register and setup a Linux server (Oracle Cloud, AWS, DigitalOcean, etc.)  
   - Make sure SSH access works

2. **Install Nginx**  
   ```bash
   sudo apt update
   sudo apt install nginx
   sudo systemctl enable nginx
   sudo systemctl start nginx

## Configure Nginx

Place your site files in /var/www/mysite
Create a server block in /etc/nginx/sites-available/mysite
Enable the site with:
sudo ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx

## Deploy Script (deploy.sh)
The script uses rsync to update the remote server with the local static site:

#!/bin/bash

LOCAL_DIR="./"
REMOTE_USER="ubuntu"
REMOTE_HOST="your-server-ip-or-hostname"
REMOTE_DIR="/var/www/mysite"

/usr/bin/rsync -avz --delete $LOCAL_DIR $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR

Make it executable:

chmod +x deploy.sh
./deploy.sh

## Access your site

By default, it will be accessible via your server's public IP
Optionally, point a custom domain to the server

### Folder Structure

/var/www/mysite/
├── index.html
├── about.html
├── projects.html
├── cv.html
├── assets/
│   ├── css/
│   ├── js/
│   └── img/
└── deploy.sh

## Notes
Make sure your server's firewall allows HTTP (port 80) traffic
Use a Reserved Public IP if you want a stable IP for DNS
Inspired by the Static Site Server project from roadmap.sh

## My personal options
Oracle Cloud free tier
http://vergunka.work/ 