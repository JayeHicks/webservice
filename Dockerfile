FROM ruby:3.0.2

LABEL maintainer="jaye.hicks@gmail.com"
LABEL description="A simple webservice that provides the answer to the universes ultimate question"
LABEL documentation="https://github.com/JayeHicks/webservice/blob/main/README.md"
LABEL version="1.0.0"

COPY README.md /docs/

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

EXPOSE 4567

CMD ["ruby", "app.rb"]
