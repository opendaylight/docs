#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# SPDX-License-Identifier: EPL-1.0
##############################################################################
# Copyright (c) 2018 The Linux Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
##############################################################################

from docs_conf.conf import *

linkcheck_ignore = [
    # Ignore jenkins because it's often slow to respond.
    'https://jenkins.opendaylight.org/releng',
    'https://jenkins.opendaylight.org/sandbox',
    'http://\$CONTROL_HOST:8181/dlux/index.html',
    # The '#' in the path makes sphinx think it's an anchor
    'https://git.opendaylight.org/gerrit/#/admin/projects/releng/builder',
]

nitpicky = True
release = version

import platform
if platform.system() != 'Windows':

    # Build integration stuff
    import subprocess

    subprocess.call(["./generate-milestone-status.sh"])
    subprocess.call(["./build-integration-robot-libdoc.sh"])
