FROM golang:1.21-alpine

WORKDIR /backend

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

ENV USER=backend_user
ENV GROUPNAME=$USER
ENV UID=12345
ENV GID=23456

RUN addgroup \
    --gid "$GID" \
    "$GROUPNAME" \
&&  adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup "$GROUPNAME" \
    --no-create-home \
    --uid "$UID" \
    $USER

RUN go build && go test ./...

EXPOSE 8080

USER backend_user

CMD ["./server"]

