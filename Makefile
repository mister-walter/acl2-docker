all: build
.PHONY: all build push

ACL2_COMMIT ?= $(shell curl --silent https://api.github.com/repos/acl2/acl2/commits/master | jq -r .sha)

IMAGE_VERSION ?= ccl-latest
LOCAL_IMAGE_NAME ?= acl2
REMOTE_IMAGE_NAME ?= atwalter/acl2
DOCKERFILE ?= Dockerfile
build:
	docker build . -t $(LOCAL_IMAGE_NAME):$(IMAGE_VERSION) \
		--build-arg ACL2_COMMIT=$(ACL2_COMMIT) -f $(DOCKERFILE)
push:
	docker image tag $(LOCAL_IMAGE_NAME):$(IMAGE_VERSION) $(REMOTE_IMAGE_NAME):$(IMAGE_VERSION)
	docker push $(REMOTE_IMAGE_NAME):$(IMAGE_VERSION)
