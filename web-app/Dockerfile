FROM nginx:1.10-alpine
MAINTAINER "Peter Schiffer" <pschiffe@redhat.com>

COPY docker-cmd.sh /docker-cmd.sh
COPY html /usr/share/nginx/html
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf \
    && sed -i '/user  nginx;/d' /etc/nginx/nginx.conf \
    && rm -f /usr/share/nginx/html/index.html \
    && chown -R nginx: /usr/share/nginx/html \
    && chmod 777 /usr/share/nginx/html \
    && chmod 777 /var/cache/nginx \
    && chmod 777 /var/run

USER nginx
EXPOSE 8080

CMD [ "/docker-cmd.sh" ]

