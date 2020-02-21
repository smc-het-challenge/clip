
FROM zb2a080/clipdream:dream4
MAINTAINER "Kami Chiotti" chiotti@ohsu.edu

COPY ./Flow.R /CliP/Flow.R

RUN chmod +x /CliP/Flow.R

RUN addgroup --force-badname --gid 3070 HPCUsers
RUN adduser --disabled-password --gecos '' --uid 3707 --gid 3070 chiotti
RUN chown -R chiotti:HPCUsers /CliP

USER chiotti
