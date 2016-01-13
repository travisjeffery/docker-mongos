FROM ubuntu:trusty

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl

RUN curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.1.tgz && \
    tar -zxvf mongodb-linux-x86_64-3.2.1.tgz && \
    cp mongodb-linux-x86_64-3.2.1/bin/mongos /usr/bin && \
    rm -rf mongodb-linux-x86_64-3.2.1*

COPY entrypoint.sh /entrypoint.sh

EXPOSE 27017
CMD ["/entrypoint.sh"]
