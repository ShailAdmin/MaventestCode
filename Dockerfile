FROM httpd:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install wget git -y
CMD httpd -D FOREGROUND
