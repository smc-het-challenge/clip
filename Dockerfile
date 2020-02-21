
FROM zb2a080/clipdream:dream4
MAINTAINER "Kami Chiotti" chiotti@ohsu.edu

COPY ./Flow.R /CliP/Flow.R

RUN chmod +x /CliP/Flow.R

RUN addgroup --gid 3070 SpellmanLab
RUN adduser --disabled-password --gecos '' --uid 3707 chiotti --gid 3070 SpellmanLab
RUN chown -R chiotti:SpellmanLab /CliP

USER chiotti
