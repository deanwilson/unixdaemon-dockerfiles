FROM ubuntu:16.04
MAINTAINER dean.wilson@gmail.com

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
      build-essential \
      ruby \
      ruby-dev \
      libsqlite3-dev \
      curl \
    && gem install --no-ri --no-rdoc gemstash

EXPOSE 9292

HEALTHCHECK --interval=15s --timeout=3s \
  CMD curl -f http://localhost:9292/ || exit 1

CMD ["gemstash", "start", "--no-daemonize"]
