#!/bin/bash

docker run --runtime nvidia --network app_default --name jupyter -d --rm -p 8888:8888 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -v /home/qba/Qooba/fastai/jetson:/opt/notebooks qooba/fastai:jetson /bin/bash -c "jupyter lab --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser --allow-root --NotebookApp.password='123QWEasd' --NotebookApp.token='123QWEasd'"

