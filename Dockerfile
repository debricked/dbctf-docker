FROM ubuntu:18.04
MAINTAINER Noxet <jonathan.sonnerup@debricked.com>

RUN apt update && apt -y install xinetd

# create a user under which to run all programs
RUN adduser --home /home/ctf --disabled-password --gecos "" ctf
WORKDIR /home/ctf

COPY . .
COPY ctf.xinetd /etc/xinetd.d/ctf

CMD xinetd -dontfork
