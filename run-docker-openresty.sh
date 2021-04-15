#!/bin/sh

BASH_PATH=/Users/zhenghegong/TOOL/docker/docker-openresty
RUN_CONTAINE_NAME="openresty"
USE_IMAGE_NAME="openresty/openresty:alpine"

docker run -d -it -p \
	6002:80 --privileged=true \
	-v $BASH_PATH/conf:/usr/local/openresty/nginx/conf \
	-v $BASH_PATH/conf/conf.d:/etc/nginx/conf.d \
	-v $BASH_PATH/log:/usr/local/openresty/nginx/logs \
	-v $BASH_PATH/html:/usr/local/openresty/nginx/html \
	--name $RUN_CONTAINE_NAME $USE_IMAGE_NAME
