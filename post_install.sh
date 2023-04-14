#!/bin/bash
# exit on error
set -ex

# import bash function library
. ./lib.sh

# post installation for nvidia container runtime
. ./post_install_nvidia_container_toolkit.sh

# install rider (needs to be in post as snap service needs to be running)
. ./post_install_rider.sh

# install intellij ultimate (needs to be in post as snap service needs to be running)
. ./post_install_intellij.sh

# yq yaml processor
. ./post_install_yq.sh

