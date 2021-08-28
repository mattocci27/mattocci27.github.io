FROM ruby:3.0.2

RUN mkdir /web
WORKDIR /web

ADD ./.ssh /root/.ssh
RUN chmod 600 /root/.ssh/*

ADD Gemfile /web/Gemfile
ADD Gemfile.lock /web/Gemfile.lock
RUN bundle install
ADD . /web