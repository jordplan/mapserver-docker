#!/usr/bin/env bash
NAME=mapserver-base
HASH=$(git log --pretty=format:'%h' -n 1)
REGISTRY=eu.gcr.io/cloudmark2
docker build --platform=linux/amd64 --no-cache  -t ${REGISTRY}/${NAME}:latest -t ${REGISTRY}/${NAME}:${HASH} .
docker push ${REGISTRY}/${NAME}:latest
docker push ${REGISTRY}/${NAME}:${HASH}
