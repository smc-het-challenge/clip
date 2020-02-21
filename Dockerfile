
FROM zb2a080/clipdream:dream4
MAINTAINER "Kami Chiotti" chiotti@ohsu.edu

COPY ./Flow.R /CliP/Flow.R

RUN chmod +x /CliP/Flow.R

RUN addgroup --gid 3010 chiotti
RUN adduser --disabled-password --gecos '' --uid 3707 --gid 3010 chiotti
USER chiotti
