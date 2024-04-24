FROM golang:1.21 as builder
WORKDIR /backend
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping

FROM builder as tester
RUN go test ./...

FROM scratch
COPY --from=builder /docker-gs-ping /server
ENV REQUEST_ORIGIN=http://localhost:5000
EXPOSE 8080
CMD ["./server"]

