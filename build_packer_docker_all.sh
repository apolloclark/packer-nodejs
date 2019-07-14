#!/bin/bash -eux

# https://github.com/nodejs/node/releases
# ensure that ENV VARs are set
export DOCKER_USERNAME=${DOCKER_USERNAME:=$(whoami)}
export PACKAGE_NAME=${PACKAGE_NAME:=nodejs}
export PACKAGE_VERSION=${PACKAGE_VERSION:=12.6.0}

./build_packer_docker_ubuntu16.04.sh
./build_packer_docker_centos7.6.sh
