#!/bin/sh

set -x

os="$(lsb_release -is)"
if [ "$os" == "Ubuntu" ]; then
  sudo apt-get update && sudo apt-get --yes --force-yes install enchant-2
elif [ "$os" == "CentOS" ]; then
  sudo yum -y install enchant
else
  echo "enchant command not found - please install"
  exit 1
fi
