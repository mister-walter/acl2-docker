all: build
.PHONY: all build push

build:
	docker build . -t acl2:8.2

push:
	docker image tag acl2:8.2 atwalter/acl2:8.2
	docker push atwalter/acl2:8.2
