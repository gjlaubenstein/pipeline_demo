FROM ruby:2.3

WORKDIR /home/app
ADD . .

EXPOSE 4567 4567

RUN bundle install

CMD ["ruby", "app.rb"]
