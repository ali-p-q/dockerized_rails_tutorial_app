FROM postgres:14.6-bullseye
FROM ruby:3.1.3-bullseye

# Ensure node.js 19 is available for apt-get
RUN curl -sL https://deb.nodesource.com/setup_19.x | bash -

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libvips nodejs && npm install -g yarn
RUN gem install bundler

# Prepare working directory.
WORKDIR /rails
COPY . /rails

# Ensure gems are installed on a persistent volume and available as bins
VOLUME /bundle
RUN bundle config set --global path '/bundle'
ENV PATH="/bundle/ruby/3.1.0/bin:${PATH}"

# Install gems
RUN bundle install

# Start app server.
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]