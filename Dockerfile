
FROM zb2a080/clipdream:dream4
MAINTAINER "Kami Chiotti" chiotti@ohsu.edu

COPY ./Flow.R /CliP/Flow.R

RUN chmod +x /CliP/Flow.R
