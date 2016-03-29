FROM ruby:2.1.8-alpine

RUN gem install fake_sqs

EXPOSE 4568

ENTRYPOINT ["/usr/local/bundle/bin/fake_sqs"]
