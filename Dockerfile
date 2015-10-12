FROM ruby:slim
MAINTAINER Shuma Yoshioka <s64.stdio@gmail.com>

RUN apt-get update -y
RUN apt-get install -y build-essential
RUN apt-get install -y nano git
RUN apt-get install -y node

#COPY . /src
WORKDIR /src

#RUN gem install middleman
#RUN bundle install

VOLUME /src

ENTRYPOINT /usr/bin/tail -f /dev/null
