#!/bin/bash

echo "Script name: run centos 7"
echo "*************************"

docker rm -f am2-systemd

docker run \
	-dit \
	--name=am2-systemd \
	--hostname=amazonlinux \
	--privileged \
	-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
	-v /tmp/$(mktemp -d):/run \
	am2-systemd:dev
