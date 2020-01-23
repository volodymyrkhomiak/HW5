#!/usr/bin/env bash
	apt-get update
	apt-get remove docker docker-engine docker.io
	apt-get -y install docker.io
	apt -y install docker-compose
	systemctl start docker
	systemctl enable docker
	cd /vagrant/wordpress/
	docker-compose up -d
