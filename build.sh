#!/bin/sh

IMGNAME="anmcarrow/alereter"

docker build -t ${IMGNAME} . && \
docker push anmcarrow/alereter
