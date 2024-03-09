# ( Geyik Academy )
#   `--(_   _)--'
#        Y-Y
#       /@@ \  Si audes scire,
#      /     \    cervam sapientiae insequere.
#      `--'.  \             ,
#          |   `.__________/)

SERVER=$(kubectl get pods -l app=server -o custom-columns=NAME:.metadata.name \
  | head -n 2 | tail -n 1)

kubectl port-forward pods/"$SERVER" 8080:8080
