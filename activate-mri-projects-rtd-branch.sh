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


#activate project docs versions for all supported
#ODL autorelease projects. This script maintains a list in the project
#and needs to be run manually by a docs maintainer.


usage() {
    echo "Usage: $0 <token>"
    echo ""
    echo "    token:  RTD API Token"
    echo ""
}

# Activate project docs version in RTD
activate_version() {
    token=$1
    project_name=$2
    version_name=$3

    echo "Activating $project_name $version_name"
    curl -X PATCH "https://readthedocs.org/api/v3/projects/$project_name/versions/$version_name/" \
        -H "Authorization: Token $token"  \
        -H "Content-Type: application/json" \
        --data "{\"active\": true, \"hidden\": false}"
}

# Build "latest" to force RTD to update available versions
update_available_versions() {
    token=$1
    project_name=$2

    echo "Forcing RTD to update available versions"
    curl -X POST "https://readthedocs.org/api/v3/projects/$project_name/versions/latest/builds/" \
        -H "Authorization: Token $token" \
        -H "Content-Length: 0"
}

# Build  to force RTD to update available versions
build_version() {
    token=$1
    project_name=$2
    version_name=$3

    echo "Forcing RTD to update available versions"
    curl -X POST "https://readthedocs.org/api/v3/projects/$project_name/versions/$version_name/builds/" \
        -H "Authorization: Token $token" \
        -H "Content-Length: 0"
}

while getopts :h: opts; do
    case "$opts" in
        h)
            usage
            exit 0
            ;;
        [?])
            usage
            exit 1
            ;;
    esac
done

if [ -z $1 ]; then
    usage
    exit 1
fi

################
# Start script #
################

token="$1"

for project in $(cut -f1 < MRI_projects_to_activate.list); do
    update_available_versions "$token" "odl-$project"
done

echo ""
echo ""
echo "Waiting 60 seconds for available versions to update"
sleep 60  # Wait a minute for RTD to update available versions

for project in $(cut -f1 < MRI_projects_to_activate.list); do
    version_name=$(grep $project MRI_projects_to_activate.list | cut -f2)
    activate_version "$token" "odl-$project" "$version_name"
    build_version "$token" "odl-$project" "$version_name"
done
