FROM golang:1.18

WORKDIR /app
COPY client.go .

RUN go build -o client

CMD ["./client"]