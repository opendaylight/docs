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

{
    echo "Milestone 1 Status"
    echo "=================="
    echo
    echo ".. list-table:: Milestone 1 Status"
    echo "   :widths: auto"
    echo "   :header-rows: 1"
    echo
    echo "   * - Project ID"
    echo "     - Project Technical Lead"
    echo "     - Project Contact"
    echo "     - Test Contact"
    echo "     - Documentation Contact"
    echo "     - Prior milestone updates?"
    echo "     - Delivered milestone deliverables?"
    echo "     - Special CI requirements?"
    echo "     - Release Plan finalized?"
    echo "     - APIs listed"
    echo "     - Dependencies documented"
    echo "     - Features requiring system test"
    echo "     - Using ODL CI for testing"

    files=($(find release-process/milestone-readouts/m1 -type f | sort))
    for f in ${files[@]}; do
        project="$(basename $f | awk -F. '{print $1}')"

        ptl=$(grep 'Project PTL:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        ptl_name=$(echo $ptl | awk -F, '{print $1}' | trim_leading_and_trailing_whitespace)
        ptl_email=$(echo $ptl | awk -F, '{print $2}' | trim_leading_and_trailing_whitespace)
        ptl_irc=$(echo $ptl | awk -F, '{print $3}' | trim_leading_and_trailing_whitespace)

        pc=$(grep 'Project Contact:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        pc_name=$(echo $ptl | awk -F, '{print $1}' | trim_leading_and_trailing_whitespace)
        pc_email=$(echo $ptl | awk -F, '{print $2}' | trim_leading_and_trailing_whitespace)
        pc_irc=$(echo $ptl | awk -F, '{print $3}' | trim_leading_and_trailing_whitespace)

        tc=$(grep 'Test Contact:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        tc_name=$(echo $ptl | awk -F, '{print $1}' | trim_leading_and_trailing_whitespace)
        tc_email=$(echo $ptl | awk -F, '{print $2}' | trim_leading_and_trailing_whitespace)
        tc_irc=$(echo $ptl | awk -F, '{print $3}' | trim_leading_and_trailing_whitespace)

        dc=$(grep 'Documentation Contact:' "$f" | awk -F: '{print $2}' | trim_leading_and_trailing_whitespace)
        dc_name=$(echo $ptl | awk -F, '{print $1}' | trim_leading_and_trailing_whitespace)
        dc_email=$(echo $ptl | awk -F, '{print $2}' | trim_leading_and_trailing_whitespace)
        dc_irc=$(echo $ptl | awk -F, '{print $3}' | trim_leading_and_trailing_whitespace)

        prior_milestone_updates=$(grep 'prior milestone readouts?' "$f" | awk -F'?' '{print $2}' | trim_leading_and_trailing_whitespace)
        delivered_milestone_deliverables=$(awk -F'?' '/deliverables planned for this milestone delivered/,/successfully?/ {print $2}' "$f" | tr -d '\n' | trim_leading_and_trailing_whitespace)
        ci_needs=$(awk -F'?' '/Does your project have any special needs in CI Infrastructure/ {print $2}' "$f" | trim_leading_and_trailing_whitespace)
        release_plan_finalized=$(awk -F'?' '/Is your project release plan finalized/ {print $2}' "$f" | trim_leading_and_trailing_whitespace)

        api_shortname=$(awk -F'?' '/Does each API have a useful short name/ {print $2}' "$f" | trim_leading_and_trailing_whitespace)
        api_interfaces_listed=$(awk -F'?' '/Are the Java interface and\/or YANG files listed for each API/ {print $2}' "$f" | trim_leading_and_trailing_whitespace)
        api_labeled=$(awk -F'?' '/labeled as tentative, provisional, or stable as appropriate for/,/each API/ {print $2}' "$f" | tr -d '\n' | trim_leading_and_trailing_whitespace)
        api_features_identified=$(awk -F'?' '/call out the OSGi bundles and\/or Karaf features providing the API/,/for each API/ {print $2}' "$f" | tr -d '\n' | trim_leading_and_trailing_whitespace)

        deps_documented=$(awk -F'?' '/Have all project dependencies requests on other projects/,/been acknowledged and documented by upstream projects/ {print $2}' "$f" | tr -d '\n' | trim_leading_and_trailing_whitespace)
        features_require_system_test=$(awk -F'?' '/have top-level features not requiring system test/ {print $2}' "$f" | trim_leading_and_trailing_whitespace)
        use_odl_ci=$(awk -F'?' '/use the OpenDaylight CI infrastructure for testing/,/top-level features requiring system test/ {print $2}' "$f" | tr -d '\n' | trim_leading_and_trailing_whitespace)

        echo "   * - $project" | trim_trailing_whitespace
        echo "     - :name: $ptl_name" | trim_trailing_whitespace
        echo "       :email: $ptl_email" | trim_trailing_whitespace
        echo "       :irc: $ptl_irc" | trim_trailing_whitespace
        echo "     - :name: $pc_name" | trim_trailing_whitespace
        echo "       :email: $pc_email" | trim_trailing_whitespace
        echo "       :irc: $pc_irc" | trim_trailing_whitespace
        echo "     - :name: $tc_name" | trim_trailing_whitespace
        echo "       :email: $tc_email" | trim_trailing_whitespace
        echo "       :irc: $tc_irc" | trim_trailing_whitespace
        echo "     - :name: $dc_name" | trim_trailing_whitespace
        echo "       :email: $dc_email" | trim_trailing_whitespace
        echo "       :irc: $dc_irc" | trim_trailing_whitespace
        echo "     - $prior_milestone_updates" | trim_trailing_whitespace
        echo "     - $delivered_milestone_deliverables" | trim_trailing_whitespace
        echo "     - $ci_needs" | trim_trailing_whitespace
        echo "     - $release_plan_finalized" | trim_trailing_whitespace
        echo "     - :short-name: $api_shortname" | trim_trailing_whitespace
        echo "       :interfaces: $api_interfaces_listed" | trim_trailing_whitespace
        echo "       :labeled: $api_labeled" | trim_trailing_whitespace
        echo "       :features: $api_features_identified" | trim_trailing_whitespace
        echo "     - $deps_documented" | trim_trailing_whitespace
        echo "     - $features_require_system_test" | trim_trailing_whitespace
        echo "     - $use_odl_ci" | trim_trailing_whitespace
    done
} > "$MILESTONE_STATUS_DIR/m1.rst"
