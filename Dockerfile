# Use the official Ruby image from Docker Hub
FROM ruby:latest

WORKDIR /app


COPY test.rb /app/test.rb
COPY http_server.rb /app/http_server.rb

EXPOSE 80


#CMD ["ruby", "http_server.rb"]
CMD ["ruby", "test.rb"]
