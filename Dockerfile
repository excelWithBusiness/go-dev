FROM golang:1.15

ENV SCRIPTS /docker-startup/scripts
ENV GOPRIVATE github.com/excelWithBusiness

RUN go get golang.org/x/tools/cmd/goimports \
	&& go get -u golang.org/x/lint/golint

COPY scripts $SCRIPTS
COPY entrypoint.sh /docker-startup/

RUN chmod +x /docker-startup/entrypoint.sh

ENTRYPOINT ["/docker-startup/entrypoint.sh"]
