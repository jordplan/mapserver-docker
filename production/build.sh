#!/usr/bin/env bash
NAME=mapserver
HASH=$(git log --pretty=format:'%h' -n 1)
REGISTRY=europe-north1-docker.pkg.dev/cloudmark2/main
docker build --platform=linux/amd64 --no-cache  -t ${REGISTRY}/${NAME}:latest -t ${REGISTRY}/${NAME}:${HASH} .
docker push ${REGISTRY}/${NAME}:latest
docker push ${REGISTRY}/${NAME}:${HASH}
