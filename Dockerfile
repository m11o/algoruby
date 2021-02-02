FROM ruby:3.0.0

RUN apt-get update && apt-get install -y build-essential

RUN mkdir /project
ENV APP_ROOT /project
WORKDIR $APP_ROOT

ADD . $APP_ROOT
