FROM alpine

RUN apk add --update --no-cache apache2-utils \
    && rm -rf /var/cache/apk/*

CMD ["bash"]
