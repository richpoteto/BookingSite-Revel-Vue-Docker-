FROM golang:1.11.1-alpine3.8

WORKDIR /go/src/docker-revel-vue

RUN apk update

RUN apk add --no-cache --virtual curl
RUN apk add -U git

RUN go get github.com/revel/revel && \
	go get github.com/revel/cmd/revel && \
	go get github.com/jinzhu/gorm && \
	go get github.com/go-sql-driver/mysql

EXPOSE 9000