FROM python:3-alpine

RUN builddeps=' \
		musl-dev \
		openssl-dev \
		libffi-dev \
		gcc \
		' \
	&& apk --no-cache add \
	ca-certificates \
	$builddeps \
	&& pip install \
		ansible \
	&& apk del --purge $builddeps

ENTRYPOINT [ "ansible" ]