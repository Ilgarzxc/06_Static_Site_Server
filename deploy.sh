#!/bin/bash

#variables
LOCAL_DIR="./"
REMOTE_USER="ubuntu"
REMOTE_HOST="ilgarvm"
REMOTE_DIR="/var/www/mysite"

#rsync automation
/usr/bin/rsync -avz --delete $LOCAL_DIR $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR
