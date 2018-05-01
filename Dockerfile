FROM node
ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-get update \
    && apt-get install -y texlive \
    && apt-get autoclean \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 9000
VOLUME [ "/data" ]
CMD [ "bash" ]
