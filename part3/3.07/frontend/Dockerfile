FROM node:16-alpine

WORKDIR /frontend

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

ENV USER=frontend_user
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

RUN npm install --no-optional && npm run build && npm install --no-optional -g serve
USER frontend_user

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]