# Dockerfile

FROM ruby:2.7.1

WORKDIR /code
COPY . /code
RUN gem install sinatra

EXPOSE 4567

CMD ["ruby", "sample.rb", "-o", "0.0.0.0"]
