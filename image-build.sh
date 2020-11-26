#!/bin/bash

# 镜像构建
docker build --build-arg JAR_FILE=$1 -t $2 .