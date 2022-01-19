#! /bin/bash

DOCKER_IMAGE=vircadia-mongodb
DOCKER_IMAGE_VER=4.4

docker run -d \
        --restart=unless-stopped \
        --name=vircadia-mongodb \
        -e LC_ALL="C.UTF-8" \
        -p 27017:27017 \
        --volume mongodb_data:/data/db \
        ${DOCKER_IMAGE}:${DOCKER_IMAGE_VER}