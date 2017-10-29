FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install \
    -y build-essential libpq-dev \
    imagemagick libmagickwand-dev libcurl3 \
    libcurl3-gnutls libcurl4-openssl-dev nodejs

ENV RAILS_ROOT /var/www/app

RUN mkdir -p $RAILS_ROOT/tmp/pids

WORKDIR $RAILS_ROOT

COPY . .

VOLUME .:/var/www/app

EXPOSE 3000

CMD bundle exec rails s -p 3000 -b '0.0.0.0'