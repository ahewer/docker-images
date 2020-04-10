FROM ubuntu:bionic
WORKDIR /root
COPY *.sh ./
RUN bash ./setup.sh && bash cleanup.sh
ENV LANG en_US.utf8
