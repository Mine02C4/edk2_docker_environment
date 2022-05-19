# EDK II Docker Environment

## Background

(WIP)

## Requirements

* Linux
* Docker
* GNU Make
* git

## How to setup

```sh
git clone <this repository>
mv edk2_docker_environment
make enter
```

You should be in a shell in a container.

```
git clone https://github.com/tianocore/edk2
cd edk2
git submodule update --init
make -C BaseTools -j $(nproc)
. edksetup.sh
```

After that, follow the instructions below for OVMF, for example.

https://github.com/tianocore/tianocore.github.io/wiki/How-to-build-OVMF

Please enjoy!
