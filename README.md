# packer-nodejs

Packer, Ansible, Serverspec, project to create a Node.js Docker image.

## Requirements

- Packer
- Ansible
- Ruby
- [Serverspec](https://serverspec.org/): gem install serverspec
- [docker-api](https://github.com/swipely/docker-api/releases): gem install docker-api

## Install

```shell
git clone https://github.com/apolloclark/packer-nodejs
cd ./packer-nodejs

# set your Docker hub username
export DOCKER_USERNAME="apolloclark" # $(whoami)

# build both the Ubuntu 16.04 and Centos 7.6 images
./build_packer_docker_all.sh

# (optional) build images using Gradle
cd ./gradle
gradle testJRuby --parallel
```

## Build Details

```shell
node.js, 11.11.0, 2019-03-05
https://nodejs.org/en/download/releases/
```