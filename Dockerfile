FROM alpine:latest

RUN apk add wget

RUN wget https://github.com/txn2/txeh/releases/download/v1.5.3/txeh_Linux_x86_64.tar.gz
RUN tar -zxvf txeh_Linux_x86_64.tar.gz

RUN mv txeh /usr/local/bin/
RUN chmod +x /usr/local/bin/txeh

ENTRYPOINT txeh
