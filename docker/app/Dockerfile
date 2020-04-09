FROM ruby:2.6.1
RUN apt-get update -qq && apt-get install -y nodejs
# RUN yum install mysql -y
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]