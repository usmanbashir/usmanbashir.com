FROM ruby:2.3.1

MAINTAINER Usman Bashir <me@usmanbashir.com>

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN bundle install
