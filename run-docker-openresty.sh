#!/bin/sh

RUN_CONTAINE_NAME="openresty3"
USE_IMAGE_NAME="zhghx/centos_openresty:v2"

docker run -d -it -p \
	6002:80 --privileged=true \
	-v /Users/zhenghegong/TOOL/openresty/docker/config:/opt/openresty/nginx/conf \
	-v /Users/zhenghegong/TOOL/openresty/docker/data:/root/data \
	--name $RUN_CONTAINE_NAME $USE_IMAGE_NAME /usr/sbin/init
