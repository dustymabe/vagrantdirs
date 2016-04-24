#!/bin/bash
set -eux

curl -L -o /tmp/vf.openshift https://raw.githubusercontent.com/projectatomic/adb-atomic-developer-bundle/master/components/centos/centos-openshift-setup/Vagrantfile
vimdiff ./Vagrantfile.openshift /tmp/vf.openshift

curl -L -o /tmp/vf.kubernetes https://github.com/projectatomic/adb-atomic-developer-bundle/raw/master/components/centos/centos-k8s-singlenode-setup/Vagrantfile
vimdiff ./Vagrantfile.kubernetes /tmp/vf.kubernetes

curl -L -o /tmp/vf.docker https://raw.githubusercontent.com/projectatomic/adb-atomic-developer-bundle/master/components/centos/centos-docker-base-setup/Vagrantfile
vimdiff ./Vagrantfile.docker /tmp/vf.docker
