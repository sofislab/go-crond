FROM golang:alpine AS buildenv

COPY . /go/src/go-crond
WORKDIR /go/src/go-crond

RUN apk --no-cache add git \
    && go get \
    && go build \
    && chmod +x go-crond \
    && ./go-crond --version

FROM alpine:3.9
RUN apk --no-cache add --update su-exec && mkdir cron.d
COPY --from=buildenv /go/src/go-crond/go-crond /usr/local/bin
COPY run.sh /usr/bin/run.sh
VOLUME ["/cron.d"]
ENTRYPOINT ["/usr/bin/run.sh"]
CMD ["/cron.d/crontab"]
