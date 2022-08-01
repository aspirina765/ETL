#!/usr/bin/bash env 
docker run -it --rm -p 8889:8888 -v /path/to/project:/home/jovyan/work jupyter/all-spark-notebook
