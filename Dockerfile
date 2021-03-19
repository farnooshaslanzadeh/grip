FROM alpine:3.7
RUN apk --no-cache add py-pip &&\
    pip install grip &&\
    mkdir /.grip && mkdir /data
USER 1000
WORKDIR /data
ENTRYPOINT ["grip"]
CMD ["--help"]
