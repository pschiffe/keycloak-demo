FROM nginx:1.10-alpine
MAINTAINER "Peter Schiffer" <pschiffe@redhat.com>

COPY docker-cmd.sh /docker-cmd.sh
COPY html /usr/share/nginx/html

CMD [ "/docker-cmd.sh" ]

