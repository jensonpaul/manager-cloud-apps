#!/usr/bin/env bash
if [ -z ${ENV+x} ]; then
	echo "+ Error: Source (dev|prod)/definations.sh first."
	exit 1
else
	echo "+ Using [${ENV}] configuration."
	
	if [ "$ENV" == "Production" ]; then
		docker-compose -f docker-compose.yml -f ./prod/docker-compose.yml up -d
	else
		docker-compose -f docker-compose.yml -f ./dev/docker-compose.yml up $@
	fi
fi
