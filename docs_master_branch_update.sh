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
Next_release="$(tr '[:lower:]' '[:upper:]' <<< "${next_release_name:0:1}")${next_release_name:1}" # Captilize Version Name
release_name="$2"
Release_version="$(tr '[:lower:]' '[:upper:]' <<< "${release_name:0:1}")${release_name:1}" # Captilize Version Name
release_branch=stable/"$2"
publish="$3"
stable_release_str=stable-$release_name

####################################
# Changes in the new stable branch #
####################################
git checkout "$release_branch"

#Updating links in docs/conf.py
sed -i "s/latest/$stable_release_str/g" docs/conf.py
if [ "$publish" == "true" ]
then
        git add docs/conf.py
        git commit -s -m "Update docs/conf.py links from latest to $stable_release_str
        Should be $stable_release_str on $release_branch."
        git review
fi

####################################
# Changes in the master branch #
####################################
git checkout master
odl_release_str=odl-$release_name
next_odl_release_str=odl-$next_release_name
#change the odl-<release> linking to stable-<release> to odl-<next_release> linking to latest
sed -i "s/$odl_release_str/$next_odl_release_str/g;" docs/conf.py
sed -i "s/$stable_release_str/latest/g;" docs/conf.py

# Get the value of line with odl-<release> linking to stable-<release>
# for appending it to the line next to odl-<next_release> linking to latest
line_number_nr=$(sed -n "/$next_odl_release_str/=" docs/conf.py)
pattern=$line_number_nr"p"
odl_latest="sed -n $pattern docs/conf.py"
odl_latest_line_value=$($odl_latest)
append_odl_latest=$(echo "$odl_latest_line_value" | sed "s/latest/$stable_release_str/g; s/$next_release_name/$release_name/g" )

# Update docs/conf.py
# sed -i "$line_number_nr'i'\
# $append_odl_latest" docs/conf.py
sed -i "$line_number_nr a $append_odl_latest" docs/conf.py
# Updating version in docs/conf.yaml
sed -i "s/$Release_version/$Next_release/g" docs/conf.yaml
# Updating version in docs/javadoc.rst
sed -i "s/$release_name/$next_release_name/g" docs/javadoc.rst
if [ "$publish" == "true" ]
then
        git add docs/conf.py docs/conf.yaml docs/javadoc.rst
        git commit -s -m "Update configuratiom files in master branch

        In docs/conf.py , add odl-$next_release_name pointing to latest
        and change odl-$release_name to point to stable-$release_name.
        In docs/conf.yaml
        Change version from $Release_version to $Next_release.
        In docs/javadoc.rst
        Change links from $release_name to $next_release_name"
        git review
fi
