FROM golang:1.9

ENV SCRIPTS /docker-startup

COPY entrypoint.sh /docker-startup
COPY scripts /docker-startup/scripts

RUN go get -u github.com/kardianos/govendor \
	&& go get golang.org/x/tools/cmd/goimports \
	&& go get -u github.com/golang/lint/golint \
	&& go get -u github.com/golang/dep/cmd/dep

ENTRYPOINT /bin/bash /docker-startup/entrypoint.sh
