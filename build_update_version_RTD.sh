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

enable_build_in_RTD_usage () {
    echo "Usage: $0 <path_to_autorelease> <token> <version_name> <publish>"
    echo ""
    echo "    path_to_autorelease:  The path to the autorelease"
    echo "    token:  Enter Token for RTD authentication"
    echo "    version_name:  Name of the version to be updated e.g stable-sodium."
    echo "    publish:  Set to true to publish"
    echo ""
}

#Function build_update_version
#build_update_version <token> <project_name> <version_name>
#Using APIv3 ReadTheDocs for triggering build and updating version i.e setting version active status true
#APIv3 : https://docs.readthedocs.io/en/latest/api/v3.html
build_update_version() {
    token=$1
    project=$2
    version=$3
    project_name_RTD=$(curl -H "Authorization: Token $token" \
    https://readthedocs.org/api/v3/projects/?slug__contains="$project");
    slug_name=$(echo "$project_name_RTD" \
    | python3 -c "import sys, json; print(json.load(sys.stdin)['results'][0]['slug'])");

    echo "Triggering build of $version in $slug_name"
        curl -d -X POST -H "Authorization: Token $token" \
        https://readthedocs.org/api/v3/projects/"$slug_name"/versions/"$version"/builds/;

    echo "Enabling RTD $version for $slug_name"
        curl --request PATCH \
        "https://readthedocs.org/api/v3/projects/$slug_name/versions/$version/" \
        --header "Content-Type: application/json"  \
        --header "Accept: application/json"  \
        --header "Authorization: Token $token"  \
        --data "{\"active\": true,\"privacy_level\":\"public\"}";
}

while getopts :h: opts; do
    case "$opts" in
        h)
            enable_build_in_RTD_usage
            exit 0
            ;;
        [?])
            enable_build_in_RTD_usage
            exit 1
            ;;
    esac
done

# User input
path_to_autorelease="$1"
token="$2"
version_name="$3"
publish="$4"

################
# Start script #
###############
cd "$path_to_autorelease"/ || exit
git submodule update
list_submodule=$(git submodule | awk '{ print $2 }')
# echo $list_submodule
if [ "$publish" == "true" ]
then
        for submodule_name in $list_submodule
            do
                submodule_name="$(cut -d'/' -f2 <<<"$submodule_name")"
                build_update_version "$token" "$submodule_name" "$version_name"
            done
fi
