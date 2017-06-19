FROM ruby:2.4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN bundle install

CMD ["ruby", "app.rb"]
