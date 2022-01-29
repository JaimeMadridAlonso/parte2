#!/bin/bash

export GROUP_NUMBER=48

sudo docker build -f Dockerfile -t 48/productpage .

sudo docker run -p 9080:9080 48/productpage