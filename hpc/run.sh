#!/bin/bash


docker run --gpus all  --name jupyter -d --rm -p 8888:8888 -v /home/qba/Qooba/Docker/fastai/_fastai:/root/.fastai -v /home/qba/Qooba/Docker/fastai:/opt/notebooks qooba/fastai:20.01-py3 /bin/bash -c "jupyter lab --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser --allow-root --NotebookApp.password='123QWEasd' --NotebookApp.token='123QWEasd'"
#docker run --gpus all --shm-size 8G --name jupyter -d --rm -p 8888:8888 -v /home/qba/Qooba/Docker/fastai:/opt/notebooks qooba/anaconda3:fastai /bin/bash -c "jupyter lab --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser --allow-root --NotebookApp.password='123QWEasd' --NotebookApp.token='123QWEasd'"
