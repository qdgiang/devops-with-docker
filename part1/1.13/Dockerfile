FROM golang:1.16

WORKDIR /backend

COPY . .

RUN go build

RUN go test ./...

EXPOSE 8080

CMD ["./server"]

