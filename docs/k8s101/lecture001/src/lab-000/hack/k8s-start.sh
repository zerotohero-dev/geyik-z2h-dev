#!/usr/bin/env bash

# ( Geyik Academy )
#   `--(_   _)--'
#        Y-Y    
#       /@@ \  Si audes scire,
#      /     \    cervam sapientiae insequere.
#      `--'.  \             ,
#          |   `.__________/)

minikube start
sleep 5
minikube addons enable ingress
sleep 5
minikube addons enable registry
sleep 5
echo "Everything is awesome!"
