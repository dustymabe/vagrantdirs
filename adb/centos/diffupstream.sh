#!/bin/bash
set -eux

curl -o /tmp/vf.openshift https://raw.githubusercontent.com/projectatomic/adb-atomic-developer-bundle/master/components/centos/centos-openshift-setup/Vagrantfile
vimdiff ./Vagrantfile.openshift /tmp/vf.openshift
