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
intersphinx_mapping['odl-integration-distribution'] = ('http://docs.opendaylight.org/projects/integration-distribution/en/latest/', None)
intersphinx_mapping['odl-integration-packaging'] = ('http://docs.opendaylight.org/projects/integration-packaging/en/latest/', None)
intersphinx_mapping['odl-releng-builder'] = ('http://docs.opendaylight.org/projects/releng-builder/en/latest/', None)

# Projects that have stable/branches
intersphinx_mapping['coe'] = ('http://docs.opendaylight.org/projects/coe/en/latest/', None)
intersphinx_mapping['genius'] = ('http://docs.opendaylight.org/projects/genius/en/latest/', None)
intersphinx_mapping['infrautils'] = ('http://docs.opendaylight.org/projects/infrautils/en/latest/', None)
intersphinx_mapping['netvirt'] = ('http://docs.opendaylight.org/projects/netvirt/en/latest/', None)
intersphinx_mapping['openflowplugin'] = ('http://docs.opendaylight.org/projects/openflowplugin/en/latest/', None)
intersphinx_mapping['ovsdb'] = ('http://docs.opendaylight.org/projects/ovsdb/en/latest/', None)

# OpenDaylight Documentation Releases
intersphinx_mapping['odl-oxygen'] = ('http://docs.opendaylight.org/en/stable-oxygen/', None)
intersphinx_mapping['odl-nitrogen'] = ('http://docs.opendaylight.org/en/stable-nitrogen/', None)
intersphinx_mapping['odl-carbon'] = ('http://docs.opendaylight.org/en/stable-carbon/', None)

linkcheck_ignore = [
    # Ignore jenkins because it's often slow to respond.
    'https://jenkins.opendaylight.org/releng',
    'https://jenkins.opendaylight.org/sandbox',
    # The '#' in the path makes sphinx think it's an anchor
    'https://git.opendaylight.org/gerrit/#/admin/projects/releng/builder',
]

nitpicky = True
release = version

html_context = {
    'version_status': 'supported',
}

def setup(app):
    app.add_stylesheet("css/ribbon.css")
