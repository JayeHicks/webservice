FROM ruby:3.0.2

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

EXPOSE 4567

CMD ["ruby", "app.rb"]

# Build container with: docker build -t my-web-service-image .
# Launch container with: docker run -d --name my-web-service -p 8001:4567 my-web-service-image:latest
# View page running in containe using http://localhost:8001 or http://127.0.0.1:8001