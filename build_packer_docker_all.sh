#!/bin/bash -eux

# ensure that ENV VARs are set
export DOCKER_USERNAME=${DOCKER_USERNAME:=$(whoami)}
export PACKAGE=${PACKAGE:=nodejs}
export PACKAGE_VERSION=${PACKAGE_VERSION:=11}

./build_packer_docker_ubuntu16.04.sh
./build_packer_docker_centos7.6.sh