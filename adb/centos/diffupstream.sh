#!/bin/bash
set -eux

curl -L -o /tmp/vf.openshift https://raw.githubusercontent.com/projectatomic/adb-atomic-developer-bundle/master/components/centos/centos-openshift-setup/Vagrantfile
vimdiff /tmp/vf.openshift ./Vagrantfile.openshift

curl -L -o /tmp/vf.kubernetes https://github.com/projectatomic/adb-atomic-developer-bundle/raw/master/components/centos/centos-k8s-singlenode-setup/Vagrantfile
vimdiff /tmp/vf.kubernetes ./Vagrantfile.kubernetes

curl -L -o /tmp/vf.docker https://raw.githubusercontent.com/projectatomic/adb-atomic-developer-bundle/master/components/centos/centos-docker-base-setup/Vagrantfile
vimdiff /tmp/vf.docker ./Vagrantfile.docker

curl -L -o /tmp/vf.marathon https://raw.githubusercontent.com/projectatomic/adb-atomic-developer-bundle/master/components/centos/centos-mesos-marathon-singlenode-setup/Vagrantfile 
vimdiff /tmp/vf.marathon ./Vagrantfile.marathon 
