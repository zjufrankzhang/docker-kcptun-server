FROM golang:alpine
MAINTAINER frankzhang <zjufrankzhang@gmail.com>
RUN apk update && \
    apk upgrade && \
    apk add git bash
RUN go get -u github.com/xtaci/kcptun/server
ADD config.json /config.json
ENTRYPOINT ["/go/bin/server"]
CMD ["-c", "/config.json"]
