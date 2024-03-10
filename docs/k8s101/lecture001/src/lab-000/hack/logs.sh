#!/usr/bin/env bash

# ( Geyik Academy )
#   `--(_   _)--'
#        Y-Y
#       /@@ \  Si audes scire,
#      /     \    cervam sapientiae insequere.
#      `--'.  \             ,
#          |   `.__________/)

CLIENT=$(kubectl get pods -l app=client -o custom-columns=NAME:.metadata.name \
  | head -n 2 | tail -n 1)

kubectl logs "$CLIENT" -f