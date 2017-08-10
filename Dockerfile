FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y wget \
	git \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd --create-home -s /bin/bash user
WORKDIR /home/user
USER user