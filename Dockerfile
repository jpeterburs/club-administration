FROM ruby:3.0.2-alpine

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add --no-cache --update \
  build-base \
  postgresql-dev \
  nodejs \
  tzdata

COPY Gemfile* ./
RUN bundle config --global frozen 1
RUN bundle config set --global without 'development test'
RUN bundle install --jobs 4

COPY . .
RUN cp config/database.yml.prod config/database.yml
RUN rake assets:precompile

EXPOSE 80
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]
