#!/bin/sh

BASH_PATH=/Users/zhenghegong/TOOL/docker/docker-openresty
RUN_CONTAINE_NAME="openresty3"
USE_IMAGE_NAME="zhghx/centos_openresty:v3"

docker run -d -it -p \
	6002:80 --privileged=true \
	-v $BASH_PATH/conf:/opt/openresty/nginx/conf \
	-v $BASH_PATH/data:/root/data \
	--name $RUN_CONTAINE_NAME $USE_IMAGE_NAME /usr/sbin/init
