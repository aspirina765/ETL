#!/usr/bin/bash env 
docker run -it --rm -p 8889:8888 -v /home/rhel9dev/data_engineer_test:/home/jovyan/work jupyter/all-spark-notebook
