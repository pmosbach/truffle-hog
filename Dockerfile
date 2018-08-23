FROM python:3-alpine

LABEL org.label-schema.vcs-url="https://github.com/pmosbach/truffle-hog"

RUN apk add --no-cache git && pip install truffleHog
RUN adduser -S truffleHog

USER truffleHog
WORKDIR /proj

ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
