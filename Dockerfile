FROM alpine

RUN apk add --update --no-cache apache2-utils

CMD ["bash"]