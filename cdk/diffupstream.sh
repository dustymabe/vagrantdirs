#!/bin/bash
set -eux

unzip -p cdk.zip cdk/components/rhel/rhel-ose/Vagrantfile > /tmp/vf.openshift
vimdiff /tmp/vf.openshift ./Vagrantfile.openshift

unzip -p cdk.zip cdk/components/rhel/misc/rhel-k8s-singlenode-setup/Vagrantfile > /tmp/vf.kubernetes
vimdiff /tmp/vf.kubernetes ./Vagrantfile.kubernetes
