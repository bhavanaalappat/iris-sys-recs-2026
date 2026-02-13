FROM ruby:3.4.1

# qq is quiet and suppresses output, -y is to automatically answer yes to prompts

RUN apt-get update -qq && \
    apt-get install -y nodejs npm default-mysql-client && \ 
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

RUN RAILS_ENV=production SECRET_KEY_BASE=dummy bundle exec rake assets:precompile
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]