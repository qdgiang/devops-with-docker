FROM docker
COPY . .

RUN docker login -u $DOCKER_USER -p $DOCKER_PASS

ENTRYPOINT [ "/bin/sh script.sh" ]