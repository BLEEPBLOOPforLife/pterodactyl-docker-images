FROM		adoptopenjdk:11-jre-openj9

LABEL		author="TheAsian EggrollMaker" maintainer="theasianeggrollmaker@gmail.com"

RUN			apt-get update -y && DEBIAN_FRONTEND="noninteractive" apt-get install -y curl ca-certificates openssl git tar sqlite fontconfig tzdata iproute2 && useradd -d /home/container -m container

USER		container

ENV			USER=container HOME=/home/container

USER		container

ENV			USER=container HOME=/home/container

WORKDIR		/home/container

COPY		./entrypoint.sh /entrypoint.sh

CMD			["/bin/bash", "/entrypoint.sh"]
