# ACL2 Docker Image

## Notes
By default, certification is done with 4 parallel tasks. This can be changed by overriding the `ACL2_CERTIFY_OPTS` build argument. (i.e. using `docker build --build-arg ACL2_CERTIFY_OPTS="-j 2"`)

By default, the "basic" book selection is certified. This can be changed by overriding the `ACL2_CERTIFY_TARGETS` build argument. Multiple targets can be provided to this argument if desired.
