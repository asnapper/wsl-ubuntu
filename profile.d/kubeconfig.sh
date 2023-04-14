#!/bin/bash

mkdir -p ~/.kube
touch ~/.kube/config
touch ~/.kube/empty.config

chmod g-r ~/.kube/config
chmod g-r ~/.kube/*.config
chmod o-r ~/.kube/config
chmod o-r ~/.kube/*.config

export KUBECONFIG=~/.kube/config:$(ls -a ~/.kube/*.config | xargs | sed 's/ /:/g') 
export KUBECONFIG_INSTALLED=yes