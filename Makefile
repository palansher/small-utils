.PHONY: list
list:
	@echo "Targets:\n"
	@LC_ALL=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
	@echo

SHELL := /bin/bash
include ./docker-hub.env

build: docker-build
push: docker-push
build-and-push: build push


docker-build:
	docker --log-level=debug build --pull --tag=palansher/utils .

docker-push:	
	docker login --username ${USER} --password ${PWD}	
	docker push palansher/utils
