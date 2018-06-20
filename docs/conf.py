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

# Append to intersphinx_mapping
intersphinx_mapping['odl-integration-test'] = ('http://docs.opendaylight.org/projects/integration-test/en/latest/', None)
intersphinx_mapping['odl-integration-packaging'] = ('http://docs.opendaylight.org/projects/integration-packaging/en/latest/', None)
intersphinx_mapping['odl-releng-builder'] = ('http://docs.opendaylight.org/projects/releng-builder/en/latest/', None)

# Projects that have stable/branches
intersphinx_mapping['netvirt'] = ('http://docs.opendaylight.org/projects/netvirt/en/stable-oxygen/', None)
intersphinx_mapping['openflowplugin'] = ('http://docs.opendaylight.org/projects/openflowplugin/en/stable-oxygen/', None)

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

html_context = {
    'version_status': 'supported',
}

def setup(app):
    app.add_stylesheet("css/ribbon.css")
