#! /bin/bash

DOCKER_IMAGE=vircadia-mongodb-trial
DOCKER_IMAGE_VER=4.4

docker run -it --rm \
        --name=vircadia-mongodb-trial \
        -e LC_ALL="C.UTF-8" \
        -p 27017:27017 \
        --volume mongodb_data:/data/db \
        ${DOCKER_IMAGE}:${DOCKER_IMAGE_VER}