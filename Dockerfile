FROM nginx:1.21.1-alpine
MAINTAINER ERMASTER100@gmail.com
COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY static-html-css-js /usr/share/nginx/html
EXPOSE 80
CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" &&
 nginx -g 'daemon off;'