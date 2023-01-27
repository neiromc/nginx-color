FROM nginx

ADD html/index.html /usr/share/nginx/html/index.html
ADD docker-entrypoint.d/90change-index-html.sh /docker-entrypoint.d/

