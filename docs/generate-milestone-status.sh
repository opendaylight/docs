#!/bin/bash
# @License EPL-1.0 <http://spdx.org/licenses/EPL-1.0>
##############################################################################
# Copyright (c) 2017 The Linux Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
##############################################################################

MILESTONE_STATUS_DIR="release-process/milestone-readouts/status"
mkdir -p "$MILESTONE_STATUS_DIR"

trim_trailing_whitespace() {
    sed -e 's/[[:space:]]*$//'
}

trim_leading_and_trailing_whitespace() {
    sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
}

{
    echo "Milestone 0 Status"
    echo "=================="
    echo
    echo ".. list-table:: Milestone 0 Status"
    echo "   :widths: auto"
    echo "   :header-rows: 1"
    echo
    echo "   * - Project ID"
    echo "     - Offset"
    echo "     - Category"
    echo "     - Labels"
    echo "     - Project Technical Lead"
    echo "     - Committers Updated"

    files=($(find release-process/milestone-readouts/m0 -type f | sort))
    for f in ${files[@]}; do
        project="$(basename $f | awk -F. '{print $1}')"
        offset=$(grep 'Project Offset:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        category=$(grep 'Project Category:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        labels=$(grep 'Project Labels:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        ptl=$(grep 'Project PTL:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        ptl_name=$(echo $ptl | awk -F, '{print $1}' | trim_leading_and_trailing_whitespace)
        ptl_email=$(echo $ptl | awk -F, '{print $2}' | trim_leading_and_trailing_whitespace)
        ptl_irc=$(echo $ptl | awk -F, '{print $3}' | trim_leading_and_trailing_whitespace)
        updated_committers=$(grep 'Project Committers is updated and accurate?' "$f" \
            | awk -F'?' '{print $2}' | trim_leading_and_trailing_whitespace)

        echo "   * - $project" | trim_trailing_whitespace
        echo "     - $offset" | trim_trailing_whitespace
        echo "     - $category" | trim_trailing_whitespace
        echo "     - $labels" | trim_trailing_whitespace
        echo "     - :name: $ptl_name" | trim_trailing_whitespace
        echo "       :email: $ptl_email" | trim_trailing_whitespace
        echo "       :irc: $ptl_irc" | trim_trailing_whitespace
        echo "     - $updated_committers" | trim_trailing_whitespace
    done
} > "$MILESTONE_STATUS_DIR/m0.rst"
