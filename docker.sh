#!/usr/bin/env bash
docker run -it -p 8888:8888 -p 6006:6006 --name=tensorflow -v $(pwd)/notebooks:/tf/notebooks -v $(pwd)/data/dataset:/tf/dataset -v $(pwd)/logs:/tf/logs -v $(pwd)/models:/tf/models -e PASSWORD=password tensorflow/tensorflow:latest-py3-jupyter
#docker exec tensorflow tensorboard --logdir=/tf/logs