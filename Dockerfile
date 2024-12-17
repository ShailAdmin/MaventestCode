FROM ubuntu:rolling
RUN apt-get update && apt-get install wget -y
CMD ["/bin/bash"]
