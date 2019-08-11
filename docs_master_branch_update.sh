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

update_file_usage () {
    echo "Usage: $0 <next_release_name> <release_name> <publish>"
    echo ""
    echo "    next_release_name:  The next_release_name e.g Magnesium ."
    echo "    release_name:  Name of the current release_name e.g sodium."
    echo "    publish:  Set to true to publish"
    echo ""
}
while getopts :h: opts; do
  case "$opts" in
    h)
        update_file_usage
        exit 0
        ;;
    [?])
        update_file_usage
        exit 1
        ;;
  esac
done

# User input
next_release_name="$1"
# Captilize Version Name
next_release="$(tr '[:lower:]' '[:upper:]' <<< "${next_release_name:0:1}")${next_release_name:1}"
release_name="$2"
Release_version="$(tr '[:lower:]' '[:upper:]' <<< "${release_name:0:1}")${release_name:1}"

release_branch=stable/"$2"
publish="$3"

####################################
# Changes in the new stable branch #
####################################
git checkout "$release_branch"
odl_release_str=odl-$release_name
#Updating links in docs/conf.py
k="latest"
sed -i "s/$k/$odl_release_str/g" docs/conf.py
if [ "$publish" == "true" ]
then
        git add .
        git commit -s -m "Update docs/conf.py links from latest to $odl_release_str
        Should be $odl_release_str on $release_branch."
        git review
fi

####################################
# Changes in the new stable branch #
####################################
git checkout master
release_str=odl-$release_name
next_odl_release_str=odl-$next_release_name
sed -i "s/$release_str/$next_odl_release_str/g;" docs/conf.py
line_number_nr=$(sed -n "/$next_odl_release_str/=" docs/conf.py)
pattern=$line_number_nr"p"
odl_latest="sed -n $pattern docs/conf.py"
odl_latest_line_value=$($odl_latest)
append_odl_latest=$(echo "$odl_latest_line_value" | sed "s/latest/$release_str/g; s/$next_release/$release_name/g" )
echo "$append_odl_latest"
sed -i "$line_number_nr a $append_odl_latest" docs/conf.py # Update docs/conf.py
sed -i "s/$Release_version/$next_release/g" docs/conf.yaml # Updating version in docs/conf.yaml
sed -i "s/$release_name/$next_release_name/g" docs/javadoc.rst # Updating version in docs/javadoc.rst
if [ "$publish" == "true" ]
then
        git add .
        git commit -s -m "Update docs/conf.py docs/conf.yaml and docs/javadoc.rst
        Should be $next_release and $next_release_name."
        git review
fi
