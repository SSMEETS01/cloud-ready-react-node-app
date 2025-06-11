#!/bin/bash

# SSH into the VPS and pull latest image, then restart container
# Requires SSH key setup and Docker login on remote server

REMOTE_USER=youruser
REMOTE_HOST=your.vps.host
REMOTE_PATH=/home/youruser/app

ssh ${REMOTE_USER}@${REMOTE_HOST} << EOF
  cd ${REMOTE_PATH}
  docker-compose pull
  docker-compose down
  docker-compose up -d
EOF
