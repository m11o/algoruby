FROM ruby:3.0.0

RUN apt-get update && apt-get install -y build-essential

RUN mkdir /project
ENV APP_ROOT /project
WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT/Gemfile
ADD Gemfile.lock $APP_ROOT/Gemfile.lock
ENV BUNDLE_PATH=$APP_ROOT/vendor/bundle

RUN bundle install

ADD . $APP_ROOT
