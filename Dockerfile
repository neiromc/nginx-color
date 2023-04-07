FROM nginx

ADD html/index.html /usr/share/nginx/html/index.html
ADD docker-entrypoint.d/90change-index-html.sh /docker-entrypoint.d/

ADD config/default.conf /etc/nginx/conf.d/default.conf
ADD docker-entrypoint.d/90change-config.sh /docker-entrypoint.d/

