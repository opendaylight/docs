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
    echo "     - PTL Name"
    echo "     - PTL Email"
    echo "     - PTL IRC"

    files=($(find release-process/milestone-readouts/m0 -type f))
    for f in ${files[@]}; do
        project="$(basename $f | awk -F. '{print $1}')"
        offset=$(grep 'Project Offset:' "$f" | awk -F: '{print $2}' | tr -d '[:space:]')
        category=$(grep 'Project Category:' "$f" | awk -F: '{print $2}' | tr -d '[:space:]')
        labels=$(grep 'Project Labels:' "$f" | awk -F: '{print $2}' | tr -d '[:space:]')
        ptl=$(grep 'Project PTL:' "$f" | awk -F: '{print $2}' | tr -d '[:space:]')
        ptl_name=$(echo $ptl | awk -F, '{print $1}')
        ptl_email=$(echo $ptl | awk -F, '{print $2}')
        ptl_irc=$(echo $ptl | awk -F, '{print $3}')

        echo "   * - $project"
        echo "     - $offset"
        echo "     - $category"
        echo "     - $labels"
        echo "     - $ptl_name"
        echo "     - $ptl_email"
        echo "     - $ptl_irc"
    done
} > "$MILESTONE_STATUS_DIR/m0.rst"
