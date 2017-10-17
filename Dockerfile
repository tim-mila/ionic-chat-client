FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY ./www /usr/share/nginx/html
COPY ./conf/ionic-chat.alimmit.com.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
