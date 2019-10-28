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
intersphinx_mapping['odl-integration-test'] = ('https://docs.opendaylight.org/projects/integration-test/en/latest/', None)
intersphinx_mapping['odl-integration-packaging'] = ('https://docs.opendaylight.org/projects/integration-packaging/en/latest/', None)
intersphinx_mapping['odl-releng-builder'] = ('https://docs.opendaylight.org/projects/releng-builder/en/latest/', None)
intersphinx_mapping['opflex'] = ('https://docs.opendaylight.org/projects/opflex/en/latest/', None)

# MRI projects
intersphinx_mapping['mdsal'] = ('https://docs.opendaylight.org/projects/mdsal/en/v3.0.7/', None)
intersphinx_mapping['odlparent'] = ('https://docs.opendaylight.org/projects/odlparent/en/v4.0.13/', None)

# Projects that have stable/branches
intersphinx_mapping['aaa'] = ('https://docs.opendaylight.org/projects/aaa/en/stable-neon/', None)
intersphinx_mapping['bgpcep'] = ('https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/', None)
intersphinx_mapping['coe'] = ('https://docs.opendaylight.org/projects/coe/en/stable-neon/', None)
intersphinx_mapping['controller'] = ('https://docs.opendaylight.org/projects/controller/en/stable-neon/', None)
intersphinx_mapping['daexim'] = ('https://docs.opendaylight.org/projects/daexim/en/stable-neon/', None)
intersphinx_mapping['genius'] = ('https://docs.opendaylight.org/projects/genius/en/stable-neon/', None)
intersphinx_mapping['infrautils'] = ('https://docs.opendaylight.org/projects/infrautils/en/stable-neon/', None)
intersphinx_mapping['integration-distribution'] = ('https://docs.opendaylight.org/projects/integration-distribution/en/stable-neon/', None)
intersphinx_mapping['jsonrpc'] = ('https://docs.opendaylight.org/projects/jsonrpc/en/stable-neon/', None)
intersphinx_mapping['lispflowmapping'] = ('https://docs.opendaylight.org/projects/lispflowmapping/en/stable-neon/', None)
intersphinx_mapping['netconf'] = ('https://docs.opendaylight.org/projects/netconf/en/stable-neon/', None)
intersphinx_mapping['netvirt'] = ('https://docs.opendaylight.org/projects/netvirt/en/stable-neon/', None)
intersphinx_mapping['openflowplugin'] = ('https://docs.opendaylight.org/projects/openflowplugin/en/stable-neon/', None)
intersphinx_mapping['ovsdb'] = ('https://docs.opendaylight.org/projects/ovsdb/en/stable-neon/', None)
intersphinx_mapping['transportpce'] = ('https://docs.opendaylight.org/projects/transportpce/en/stable-neon/', None)

# OpenDaylight Documentation Releases
intersphinx_mapping['odl-latest'] = ('https://docs.opendaylight.org/en/latest/', None)
intersphinx_mapping['odl-neon'] = ('https://docs.opendaylight.org/en/stable-neon/', None)
intersphinx_mapping['odl-fluorine'] = ('https://docs.opendaylight.org/en/stable-fluorine/', None)
intersphinx_mapping['odl-oxygen'] = ('https://docs.opendaylight.org/en/stable-oxygen/', None)
intersphinx_mapping['odl-nitrogen'] = ('https://docs.opendaylight.org/en/stable-nitrogen/', None)
intersphinx_mapping['odl-carbon'] = ('https://docs.opendaylight.org/en/stable-carbon/', None)

linkcheck_ignore = [
    'http://localhost',
    # Ignore jenkins because it's often slow to respond.
    'https://jenkins.opendaylight.org/releng',
    'https://jenkins.opendaylight.org/sandbox',
    # The '#' in the path makes sphinx think it's an anchor
    'https://git.opendaylight.org/gerrit/#/admin/projects/releng/builder',
    'https://git.opendaylight.org/gerrit/gitweb',
]

nitpicky = True
release = version

html_context = {
    'version_status': 'supported',
}

def setup(app):
    app.add_stylesheet("css/ribbon.css")
