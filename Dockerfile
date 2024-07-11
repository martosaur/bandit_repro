# vi: set ft=dockerfile:

FROM hexpm/elixir:1.16.3-erlang-26.2.5-ubuntu-jammy-20240530

EXPOSE 4000

COPY config /opt/app/config
COPY mix.exs mix.lock /opt/app/

WORKDIR /opt/app

RUN mix deps.get
RUN mix deps.compile

CMD mix compile && mix phx.server