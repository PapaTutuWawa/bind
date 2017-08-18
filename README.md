bind
===
Run a bind nameserver in a docker container

## Usage
Build the container using ```docker build -t bind .```.

The script ```scripts/docker_bind``` will mount ```/srv/internal/bind/zones``` to ```/var/named/```
and ```/srv/internal/bind/config/named.conf``` to ```/etc/bind/named.conf``` in the container.

In addition to that, the script will use the network *production-base* with the IP *240.1.0.2* for the
container.

For safety reasons, the container will have a read-only mounted rootfs. The nameserver will be started
without IPv6 (For security???).
