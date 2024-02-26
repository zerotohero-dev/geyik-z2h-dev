# ( Vadideki Geyik )
#   `--(_   _)--'
#        Y-Y
#       /@@ \   don’t miss the deer,
#      /     \    go kiss the deer.
#      `--'.  \             ,
#          |   `.__________/)

FROM golang:1.22

WORKDIR /app
COPY server.go .

RUN go build -o server

EXPOSE 8080
CMD ["./server"]