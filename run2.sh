#!/bin/bash

rm -r practica_creativa2

git clone https://github.com/CDPS-ETSIT/practica_creativa2.git

export GROUP_NUMBER=48

docker build -f Dockerfile -t 48/productpage .

docker run -p 9080:9080 48/productpage
