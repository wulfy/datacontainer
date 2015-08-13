FROM ubuntu:latest
# add our user and group first to make sure their IDs get assigned consistently, regardless of other deps added later
RUN mkdir -p /data/docs \
  && chmod 777 /data/docs

RUN mkdir -p /data/screens \
  && chmod 777 /data/screens

RUN mkdir -p /data/logs \
  && chmod 777 /data/logs

VOLUME ["/data/docs","/data/screens","/data/logs"]
#CMD ["echo", "Data container for graphite"]
