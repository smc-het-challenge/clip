
FROM zb2a080/clipdream:dream4
MAINTAINER "Kami Chiotti" chiotti@ohsu.edu

COPY ./Flow.R /CliP/Flow.R

RUN chmod +x /CliP/Flow.R

RUN addgroup --gid 3070 spellmanlab
RUN adduser --disabled-password --gecos '' --uid 3707 chiotti --gid 3070 spellmanlab
RUN chown -R chiotti:spellmanlab /CliP

USER chiotti
