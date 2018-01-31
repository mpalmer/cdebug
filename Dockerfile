FROM debian:stretch

RUN apt-get update \
	&& apt-get -y install net-tools strace lsof procps wget less tcpdump telnet vim jq curl gdb \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

