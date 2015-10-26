FROM ruby:latest

ENV APP_HOME /test_app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME

RUN gem install sinatra
RUN gem install puma
RUN gem install httparty
RUN gem install erubis

EXPOSE 4567

ENTRYPOINT ruby app.rb
