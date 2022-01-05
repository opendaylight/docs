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

usage() {
    echo "Usage: $0 <token> <version_name>"
    echo ""
    echo "    token:  RTD API Token"
    echo "    version_name:  Name of the version to be activated e.g stable-aluminium."
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

if [ -z $2 ]; then
    usage
    exit 1
fi

################
# Start script #
################

token="$1"
version_name="$2"

supported_projects=(
    odl-daexim
    odl-genius
    opendaylight-distribution
    odl-jsonrpc
    odl-lispflowmapping
    odl-openflowplugin
    opendaylight-ovsdb
)

for project in ${supported_projects[@]}; do
    update_available_versions "$token" "$project" "$version_name"
done

echo ""
echo ""
echo "Waiting 60 seconds for available versions to update"
sleep 60  # Wait a minute for RTD to update available versions

for project in ${supported_projects[@]}; do
    activate_version "$token" "$project" "$version_name"
done
