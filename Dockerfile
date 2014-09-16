FROM ubuntu:14.04

MAINTAINER Andreas Hucks "andreas@inputrequired.org"

RUN \
    apt-get update && \
    apt-get install -y apt-cacher-ng

EXPOSE 3142

CMD ["/usr/sbin/apt-cacher-ng", "ForeGround=1"]