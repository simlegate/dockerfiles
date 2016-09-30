FROM ruby:2.2

ENV RAILS_ENV=production

WORKDIR /usr/src/app

COPY Gemfile ./Gemfile

COPY lib lib

RUN bundle install --without development test

COPY . /usr/src/app

CMD ["sh", "bin/start.sh"]
