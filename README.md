# packer-nodejs

Packer, Ansible, Serverspec, project to create a Node.js Docker images.

## Requirements

- Packer
- Ansible
- [Serverspec](https://serverspec.org/): gem install serverspec
- [docker-api](https://github.com/swipely/docker-api/releases): gem install docker-api

## Install
```shell
git clone https://github.com/apolloclark/packer-nodejs
cd ./packer-nodejs

# set your Docker hub username
export DOCKER_USERNAME="apolloclark" # $(whoami)

# ./all.sh
./build_packer_docker.sh
```

## Build Details

```shell
node.js, 11.11.0, 2019-03-05
https://nodejs.org/en/download/releases/
```