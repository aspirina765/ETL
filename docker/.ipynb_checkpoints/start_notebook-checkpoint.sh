#!/usr/bin/bash env 
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker system prune -a



