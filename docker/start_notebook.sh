#!/usr/bin/bash env 

# docker run -d -P --name notebook jupyter/all-spark-notebook

# docker/start_notebook.sh

# docker run -it --rm -p 8889:8889 -v /home/rhel9dev/data_engineer_test:/home/lucas/testEleflow jupyter/pyspark-notebook

# docker run --rm -p 8888:8888 jupyter/pyspark-notebook -v /.:/home/lucas/eleflow

# sudo docker run -it --rm -p 8889:8888 jupyter/pyspark-notebook


sudo docker run -it --rm -p 8887:8888 -v /home/rhel9dev/data_engineer_test:/home/jovyan/work jupyter/all-spark-notebook
# docker container stop $(docker container ls -aq)

# docker system prune -a 

# podman  run -d -P --name notebook jupyter/all-spark-notebook

# uid=1000
# gid=100

# subuidSize=$(( $(podman info --format "{{ range .Host.IDMappings.UIDMap }}+{{.Size }}{{end }}" ) - 1 ))
# subgidSize=$(( $(podman info --format "{{ range .Host.IDMappings.GIDMap }}+{{.Size }}{{end }}" ) - 1 ))

# podman run -it --rm -p 10000:8888 \
#     -v "${PWD}":/home/jovyan/work --user $uid:$gid \
#     --uidmap $uid:0:1 --uidmap 0:1:$uid --uidmap $(($uid+1)):$(($uid+1)):$(($subuidSize-$uid)) \
#     --gidmap $gid:0:1 --gidmap 0:1:$gid --gidmap $(($gid+1)):$(($gid+1)):$(($subgidSize-$gid)) \
#     docker.io/jupyter/all-spark-notebook

