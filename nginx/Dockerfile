FROM tutum/nginx

RUN rm /etc/nginx/sites-enabled/default
COPY certificate/ /etc/nginx
ADD sites-enabled/ /etc/nginx/sites-enabled
