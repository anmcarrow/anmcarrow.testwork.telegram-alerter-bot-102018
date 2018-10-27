# vim:set ft=dockerfile:
FROM alpine

ENV DEPS="py2-requests py2-yaml"

RUN apk add --no-cache ${DEPS}

COPY ./alerter.* ./entry.sh /opt/alerter/

WORKDIR /opt/alerter
ENTRYPOINT ["./entry.sh"]
CMD ["./alerter.py"]
