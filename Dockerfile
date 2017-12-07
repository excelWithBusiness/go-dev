FROM golang:1.8

RUN go get -u github.com/kardianos/govendor \
	&& go get golang.org/x/tools/cmd/goimports \
	&& go get -u github.com/golang/lint/golint \
	&& go get -u github.com/golang/dep/cmd/dep
