FROM  ubuntu:14.04

RUN   apt-get update
RUN   apt-get install -y git nginx

RUN   mkdir /apps
ADD   . /apps/html

RUN   mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf_original
RUN   mv /apps/html/nginx.conf /etc/nginx/nginx.conf

WORKDIR /apps/html

EXPOSE 8888
CMD    ["nginx"]
