FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
WORKDIR /var/www/html
COPY index.html .
EXPOSE 80
WORKDIR /
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;"]