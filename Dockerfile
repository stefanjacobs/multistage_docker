FROM golang:1.8.1

WORKDIR /go/src/github.com/plutov/golang-multi-stage/

COPY main.go .

RUN GOOS=linux go build -o app .

FROM alpine:latest
RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY --from=0 /go/src/github.com/plutov/golang-multi-stage/app .

CMD ["./app"]