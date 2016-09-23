FROM ruby:2.3.1-alpine

# swarm modeのoverlay network内でfake_sqsが正しくバインドできない問題のワークアラウンド
# 本家のiain/fake_sqsではなくbindとhostnameを別々に指定できるfeathj/fake_sqsを使う
RUN apk add --update git
RUN gem install specific_install
RUN gem specific_install -l 'https://github.com/feathj/fake_sqs.git'

EXPOSE 4568
