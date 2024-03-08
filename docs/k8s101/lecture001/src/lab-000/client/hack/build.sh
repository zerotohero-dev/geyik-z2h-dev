#!/usr/bin/env bash

# ( Geyik Academy )
#   `--(_   _)--'
#        Y-Y    
#       /@@ \  Si audes scire,
#      /     \    cervam sapientiae insequere.
#      `--'.  \             ,
#          |   `.__________/)

docker build -f Dockerfile . -t "geyik-server":"0.5.0"
docker tag "geyik-server":"0.5.0" "localhost:5000/geyik-client":"0.5.0"
docker push "localhost:5000/geyik-client":"0.5.0"
