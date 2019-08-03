#!/bin/bash
# SPDX-License-Identifier: EPL-1.0
##############################################################################
# Copyright (c) 2019 The Linux Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
##############################################################################

publish="false" # By default set false
while getopts ":d:l:p:n:" opt; do
  case $opt in
    d)
      dir=$OPTARG
      echo "-d directory path : $OPTARG" >&2;;
    p)
      publish=$OPTARG
      echo "-p publish boolean set true to publish: $OPTARG" >&2;;
    l)
      latest_release=$OPTARG
      echo "-l latest_release : $OPTARG" >&2;;
    n)
      next_release=$OPTARG
      echo "-l next_release : $OPTARG" >&2;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
ODL_DIR=$dir
master=$latest_release
branch=stable/$master
# Captilize Version Name
release_version="$(tr '[:lower:]' '[:upper:]' <<< "${master:0:1}")${master:1}"
next_release_version="$(tr '[:lower:]' '[:upper:]' <<< "${next_release:0:1}")${next_release:1}"
cd "$ODL_DIR"/autorelease || exit
git submodule update
command='sed -i ''"s/.*version.*/version: '"$next_release_version"'/"'' docs/conf.yaml || true'
git submodule foreach "git checkout master"
git submodule foreach "$command"
if [ "$publish" == "true" ]
  then
    git submodule foreach "git add . || true"
    git submodule foreach "git commit -s -m 'Update docs header to $next_release_version in master

Should be $next_release_version on master and $release_version on $branch.' || true"
    git submodule foreach "git review || true"
fi
command='sed -i ''"s/.*version.*/version: '"$release_version"'/"'' docs/conf.yaml || true'
git submodule foreach "git checkout $branch"
git submodule foreach "$command"
if [ "$publish" == "true" ]
  then
    git submodule foreach "git add . || true"
    git submodule foreach "git commit -s -m 'Update docs header to $release_version in $branch

Should be $next_release_version on master and $release_version on $branch.' || true"
    git submodule foreach "git review || true"
fi
