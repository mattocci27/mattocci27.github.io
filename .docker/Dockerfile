FROM ruby:alpine

# prepare a user which runs everything locally! - required in child images!
#RUN useradd --user-group --create-home --shell /bin/false app

RUN apk update && apk upgrade && apk add git build-base \
  && rm -rf /var/cache/apk/*

RUN addgroup --gid 1000 app \
   && adduser --disabled-password --ingroup app --uid 1000 app


ENV HOME=/home/app
WORKDIR $HOME

# prepare a user which runs everything locally! - required in child images!
#RUN useradd --user-group --create-home --shell /bin/false app
ENV APP_NAME=web

# before switching to user we need to set permission properly
# copy all files, except the ignored files from .dockerignore
COPY . $HOME/$APP_NAME/

#COPY ./.docker/Rakefile $HOME/$APP_NAME/
RUN chown -R app:app $HOME/*

WORKDIR $HOME/$APP_NAME
USER app

RUN gem install bundler \
  && bundle install

#RUN rake publish
CMD ["/bin/sh"]
