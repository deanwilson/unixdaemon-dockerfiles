FROM ubuntu:16.04
MAINTAINER Dean Wilson
ENV REFRESHED_AT 2018-04-07-12-05-02

RUN apt-get -yqq update ; apt-get -yqq install ruby ca-certificates
RUN gem install --no-rdoc --no-ri puppet-lint rake

VOLUME [ "/modules/" ]

WORKDIR /modules/

COPY puppet-lint-wrapper.sh /

ENTRYPOINT [ "/puppet-lint-wrapper.sh" ]

CMD [ "**/*.pp" ]
