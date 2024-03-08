# ( Geyik Academy )
#   `--(_   _)--'
#        Y-Y    
#       /@@ \  Si audes scire,
#      /     \    cervam sapientiae insequere.
#      `--'.  \             ,
#          |   `.__________/)

FROM golang:1.22

WORKDIR /app
COPY main.go .

RUN go build main.go

EXPOSE 8080
CMD ["./main"]]
