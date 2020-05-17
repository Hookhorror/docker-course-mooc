FROM ruby:2.6.0

WORKDIR teht1-14
RUN git clone https://github.com/docker-hy/rails-example-project
WORKDIR rails-example-project
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN gem install bundler
RUN bundle install
RUN rails db:migrate

CMD ["rails", "s"]
