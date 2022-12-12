# File: docker_phx/Dockerfile
FROM elixir:1.14.2-otp-25-alpine as build


# Install debian packages
RUN apt-get update && \
  apt-get install --yes build-essential inotify-tools postgresql-client git && \
  apt-get clean

ADD . /app


# Install node
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

WORKDIR /app

RUN mix deps.get

EXPOSE 4000

CMD ["/app/entrypoint.sh"]