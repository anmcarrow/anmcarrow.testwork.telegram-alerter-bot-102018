#!/bin/sh

IMGNAME="anmcarrow/alerter"

docker build -t ${IMGNAME} . && \
docker push anmcarrow/alereter
