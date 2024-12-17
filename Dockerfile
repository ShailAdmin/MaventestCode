FROM ubuntu:20.04
RUN apt-get update && apt-get install wget -y
CMD ["echo", "Hellow From HTTPS images!"]
