# packer-nodejs

Packer, Ansible, Serverspec, project to create a Node.js Docker image.

## Requirements

- [Packer](https://packer.io/)
- [Ansible](https://www.ansible.com/)
- [Gradle](https://gradle.org/install/#manually)
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Serverspec](https://serverspec.org/): gem install serverspec
- [docker-api](https://github.com/swipely/docker-api/releases): gem install docker-api

## Install

```shell
git clone --recurse-submodules https://github.com/apolloclark/packer-nodejs
cd ./packer-nodejs

# update submodules
git submodule update --recursive --remote

# set your Docker hub username
export DOCKER_USERNAME="apolloclark" # $(whoami)
export DOCKER_PASSWORD=""

# build both the Ubuntu 16.04 and Centos 7.6 images
./build_packer_docker_all.sh



# Gradle, build all images, in parallel
gradle test --parallel --project-dir gradle-build

# Gradle, build all images, in parallel, forced rebuild
gradle test --parallel --rerun-tasks --project-dir gradle-build

# Gradle, build only specific OS images
gradle ubuntu18.04:test --project-dir gradle-build
gradle ubuntu16.04:test --project-dir gradle-build
gradle centos7:test --project-dir gradle-build

# Gradle, build only specific OS images, forced rebuild
gradle ubuntu18.04:test --rerun-tasks --project-dir gradle-build
gradle ubuntu16.04:test --rerun-tasks --project-dir gradle-build
gradle centos7:test --rerun-tasks --project-dir gradle-build

# Gradle, clean up previous builds, from today
gradle clean --parallel --project-dir gradle-build

# clean up ALL previous builds
./clean_packer_docker.sh



# Gradle, list tasks, and dependency graph
gradle tasks --project-dir gradle-build
gradle tasks --all --project-dir gradle-build
gradle test taskTree --project-dir gradle-build
gradle buildParallel taskTree --project-dir gradle-build

# Gradle, debug
gradle properties

gradle ubuntu16.04:info --project-dir gradle-build

gradle ubuntu16.04:test --project-dir gradle-build --info --rerun-tasks

rm -rf ~/.gradle
```

## Build Details

```shell
node.js, 12.4.0, 2019-06-04
https://nodejs.org/en/download/releases/
```