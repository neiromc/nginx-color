FROM nginx

ADD docker-entrypoint.sh /docker-entrypoint.sh
ADD html/index.html /usr/share/nginx/html/index.html

RUN chmod ug+x /docker-entrypoint.sh

