FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install nginx -y

RUN apt install openssl -y

RUN rm -rf /etc/nginx/sites-available/default

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=42/OU=42/CN=imahri.42.fr/UID=imahri"

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

RUN  mkdir -p /run/nginx

CMD ["nginx", "-g" , "daemon off;"]
