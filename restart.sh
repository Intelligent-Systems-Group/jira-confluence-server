#!/bin/bash

docker stop traefik
docker rm traefik

docker stop mysql
docker rm mysql

docker stop phpmyadmin
docker rm phpmyadmin

docker stop confluence
docker rm confluence

docker stop jira
docker rm jira

docker-compose up -d