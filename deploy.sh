#!/bin/bash

#variables
LOCAL_DIR="./"
REMOTE_USER="ubuntu"
REMOTE_HOST="18.203.237.117"
REMOTE_DIR="/home/ubuntu/mysite"

#rsync automation
/usr/bin/rsync -avz --delete -e "ssh -i ~/.ssh/ilgar.pem" $LOCAL_DIR $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR
