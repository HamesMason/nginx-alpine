FROM alpine:latest

RUN apk update \
 && apk add nginx \
 && apk add curl \
 && apk add bash \
 && mkdir -p /usr/share/nginx/html

RUN mkdir -p /var/lib/nginx/logs \
 && mkdir -p /var/log/nginx \
 && mkdir -p /run/nginx \
 && chown nginx:nginx /var/lib/nginx/logs \
 && chown nginx:nginx /var/log/nginx \
 && chown nginx:nginx /run/nginx \
 && rm /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html
COPY basic.conf /etc/nginx/conf.d/basic.conf

USER nginx

EXPOSE 10080

CMD ["nginx", "-g", "daemon off;"]
