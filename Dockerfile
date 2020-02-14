FROM golang:1.12-alpine

RUN apk --no-cache add git && \
    go get -u github.com/locona/github-release-qadoc && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
