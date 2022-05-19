IMAGE_NAME:=ovmf_build_env
MOUNT_OPTIONS:=-v "$(CURDIR)":/workspace
DOCKER_RUN_OPTIONS:=-u `id -u`:`id -g`

.PHONY: container enter

container:
	docker build -t $(IMAGE_NAME) ./container

enter: container
	docker run --rm -it $(DOCKER_RUN_OPTIONS) $(MOUNT_OPTIONS) -w /workspace $(IMAGE_NAME) /bin/bash