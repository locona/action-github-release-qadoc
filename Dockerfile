FROM golang:1.14-alpine

ENV GO111MODULE=on

RUN apk --no-cache add git bash && \
    go get -u github.com/locona/github-release-qadoc

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
