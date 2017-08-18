FROM alpine:3.6
LABEL maintainer Alexander 'Polynomdivision'

# Install bind
RUN apk add --no-cache bind

# Set the entrypoint to the nameserver
#  -f: Run in foreground
#  -4: IPv4 only
ENTRYPOINT ["/usr/sbin/named", "-f", "-4"]
