#!/bin/bash
# @License EPL-1.0 <http://spdx.org/licenses/EPL-1.0>
##############################################################################
# Copyright (c) 2016 Red Hat, Inc. and others.
# Copyright (c) 2017 The Linux Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
##############################################################################

CSIT_DIR="submodules/integration/test/csit/libraries"
ROBOT_DIR="$(pwd)/_static/integration/robot"
TMP_ROBOT_DIR="$(pwd)/_build/robot"

mkdir -p "$ROBOT_DIR" "$TMP_ROBOT_DIR"

# --- START BUILD ROBOT DOCS --- #
pushd "$CSIT_DIR"
csit_dirs=($(find . -type d | sed 's#./##'))
csit_files=($(find . -type f -name "*.py" -o -name "*.robot" | sed 's#./##'))

pushd "$ROBOT_DIR"
mkdir -p ${csit_dirs[*]}
popd
pushd "$TMP_ROBOT_DIR"
mkdir -p ${csit_dirs[*]}
popd

if hash parallel 2>/dev/null; then
    parallel --jobs 200% --halt now,fail=1 python2 -m robot.libdoc "{}" "$TMP_ROBOT_DIR/{}.html" ::: ${csit_files[*]}
else
    for f in "${csit_files[@]}"; do
        python -m robot.libdoc "$f" "$TMP_ROBOT_DIR/$f.html"
    done
fi
popd
# --- END BUILD ROBOT DOCS --- #

# --- START BUILD ROBOT INDEX --- #
pushd "$TMP_ROBOT_DIR"
echo "<html><body><ul>" > "$ROBOT_DIR/index.html"

html_files=($(find . -type f -name "*.html" | sed 's#./##'))
for f in "${html_files[@]}"; do
    sed 's/black/orange/; s/white/black/; s/^<body>/<body><img src="..\/..\/odl.png">/' "$f" > "$ROBOT_DIR/$f"
    echo "<li><a href=\"$f\">$f</a></li>" >> "$ROBOT_DIR/index.html"
done

echo "</ul></body></html>" >> "$ROBOT_DIR/index.html"
popd
# --- END BUILD ROBOT INDEX --- #
