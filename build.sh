#!/bin/bash

docker build -t gipert/remage-base:slim -f Dockerfile.slim .
docker push gipert/remage-base:slim

docker build -t gipert/remage-base:G4.10.7 -f Dockerfile.G4-10-7 .
docker push gipert/remage-base:G4.10.7

docker build -t gipert/remage-base:G4.11.0 -f Dockerfile.G4-11-0 .
docker push gipert/remage-base:G4.11.0

docker build --build-arg CMAKE_BUILD_TYPE="RelWithDebInfo" \
             -t gipert/remage-base:slim-debuginfo -f Dockerfile.slim .
# docker push gipert/remage-base:slim-debuginfo

docker build --build-arg CMAKE_BUILD_TYPE="RelWithDebInfo" \
             -t gipert/remage-base:G4.10.7-debuginfo -f Dockerfile.G4-10-7 .
# docker push gipert/remage-base:G4.10.7-debuginfo

docker build --build-arg CMAKE_BUILD_TYPE="RelWithDebInfo" \
             -t gipert/remage-base:G4.11.0-debuginfo -f Dockerfile.G4-11-0 .
# docker push gipert/remage-base:G4.11.0-debuginfo

docker build -t gipert/remage-base:latest .
docker push gipert/remage-base:latest
