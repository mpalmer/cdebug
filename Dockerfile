FROM debian:buster

RUN apt-get update \
	&& apt-get -y install --no-install-recommends curl gdb jq less lsof net-tools procps strace tcpdump telnet vim wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

