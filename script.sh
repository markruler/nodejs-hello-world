#!/bin/bash

TAG="0.1.0"

docker build -f Dockerfile . -t markruler/nodejs-hello-world
docker tag markruler/nodejs-hello-world markruler/nodejs-hello-world:${TAG}
docker push markruler/nodejs-hello-world:${TAG}
docker push markruler/nodejs-hello-world
# docker run -d --name nodejs-test -p 5000:5000 markruler/nodejs-hello-world