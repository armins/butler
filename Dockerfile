FROM ruby:2.5.1-alpine3.7
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /butler
WORKDIR /butler
ADD Gemfile /butler/Gemfile
ADD Gemfile.lock /butler/Gemfile.lock
RUN bundle install
ADD . /butler
CMD ["./run_rake.sh"]
