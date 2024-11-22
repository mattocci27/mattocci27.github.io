FROM ruby:3.0.2

# Create and set the working directory
WORKDIR /web

# Copy Gemfiles and install dependencies
ADD Gemfile /web/Gemfile
ADD Gemfile.lock /web/Gemfile.lock
RUN bundle install

# Add the application code
ADD . /web
