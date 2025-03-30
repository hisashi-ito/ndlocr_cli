#! /bin/bash
IMAGE="ocr-v2-cli-py38:latest"
CONTAINER="ocr_cli_runner"

sudo docker run \
     -tid \
     --gpus all \
     --privileged \
     -v /data:/data \
     --shm-size=256m \
     --name ${CONTAINER} \
     ${IMAGE} \
     /bin/bash
