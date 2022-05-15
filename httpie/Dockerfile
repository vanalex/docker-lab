FROM alpine:latest
LABEL maintainer "alex pajaron apjorquera@gmail.com"

RUN apk --no-cache add \
	ca-certificates \
	python \
	py2-pip \
	&& pip install httpie httpie-unixsocket

ENTRYPOINT ["http"]    