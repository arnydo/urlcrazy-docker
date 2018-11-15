FROM alpine:latest

LABEL MAINTAINER arnydo@protonmail.com

WORKDIR /tmp

RUN apk add ruby curl tar

RUN curl -L http://www.morningstarsecurity.com/downloads/urlcrazy-0.5.tar.gz -o urlcrazy-0.5.tar.gz && \
    tar -xvf urlcrazy-0.5.tar.gz && \
    mkdir /opt/urlcrazy -p && \
    mv ./urlcrazy-0.5/* /opt/urlcrazy

WORKDIR /opt/urlcrazy

ENTRYPOINT [ "./urlcrazy"]
CMD ["-h"]
