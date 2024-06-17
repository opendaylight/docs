#!/bin/sh

set -x

os="$(lsb_release -is)"

if [[ "${os}" =~ "Ubuntu" ]]; then
    command enchant>/dev/null || command enchant-2 -v>/dev/null || \
    sudo apt-get update && sudo apt-get --yes --force-yes install enchant-2
elif [[ "${os}" =~ ^(Fedora|CentOS)$ ]]; then
    command enchant>/dev/null || command enchant-2 -v>/dev/null || \
    sudo yum -y install enchant
else
        echo "enchant command not found on ${os}. Please install and try again"
    exit 1
fi
