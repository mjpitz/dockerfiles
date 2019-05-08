#!/usr/bin/env bash

if [[ $# -lt 1 ]]; then
    echo "usage: build.sh <image> [buildx args...]"
    exit 1
fi

image=$1
shift

echo "building ${image}"
cd ${image}

echo "docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t mjpitz/dockerfiles-${image}:latest . $@"
docker buildx rm ${image}
docker buildx create --name ${image}
docker buildx use ${image}
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t mjpitz/dockerfiles-${image}:latest . $@
