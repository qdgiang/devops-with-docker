FROM golang:1.16

WORKDIR /backend

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && go test ./... && useradd -m backend_user && rm -rf /var/lib/apt/lists/* \
&& apt-get purge -y --auto-remove curl \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 8080

USER backend_user

CMD ["./server"]

