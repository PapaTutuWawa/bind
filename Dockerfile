FROM alpine:3.6
LABEL maintainer Alexander 'Polynomdivision'

RUN apk add --no-cache bind

ENTRYPOINT ["/usr/sbin/named", "-f", "-4"]
