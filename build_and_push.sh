#!/bin/bash

# Tag and push frontend Docker image
docker build -t yourdockerhubusername/frontend-app ./frontend
docker push yourdockerhubusername/frontend-app

# Tag and push backend Docker image
docker build -t yourdockerhubusername/backend-api ./backend
docker push yourdockerhubusername/backend-api
