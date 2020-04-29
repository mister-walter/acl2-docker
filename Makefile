all: build
.PHONY: all build push

build:
	docker build . -t acl2:8.3

push:
	docker image tag acl2:8.3 atwalter/acl2:8.3
	docker push atwalter/acl2:8.3
