FROM golang:1.18

WORKDIR /app
COPY server.go .

RUN go build -o server

EXPOSE 8080
CMD ["./server"]