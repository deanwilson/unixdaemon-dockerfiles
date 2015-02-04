FROM ubuntu:14.10
MAINTAINER Dean Wilson
ENV REFRESHED_AT 2015-02-04-19-45-02

RUN apt-get -yqq update ; apt-get -yqq install ruby ca-certificates
RUN gem install --no-rdoc --no-ri puppet-lint rake

VOLUME [ "/modules/" ]

WORKDIR /modules/

COPY puppet-lint-wrapper.sh /

ENTRYPOINT [ "/puppet-lint-wrapper.sh" ]

CMD [ "**/*.pp" ]
