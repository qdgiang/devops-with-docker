FROM golang:1.16

WORKDIR /backend

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN go test ./...

EXPOSE 8080

CMD ["./server"]

