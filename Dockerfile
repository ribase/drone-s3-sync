# Docker image for the Drone build runner
#
#     CGO_ENABLED=0 go build -a -tags netgo
#     docker build --rm=true -t plugins/drone-s3-sync .

FROM alpine:3.2

RUN  apk update
RUN  apk add tzdata
RUN  apk add ca-certificates
RUN  apk add mailcap
RUN  rm -rf /var/cache/apk/*

RUN ls /usr/share/zoneinfo
RUN cp /usr/share/zoneinfo/Europe/Brussels /etc/localtime
RUN echo "Europe/Brussels" >  /etc/timezone

ADD drone-s3-sync /bin/
ENTRYPOINT ["/bin/drone-s3-sync"]
