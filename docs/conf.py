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
intersphinx_mapping['controller'] = ('https://docs.opendaylight.org/projects/controller/en/v2.0.3/', None)
intersphinx_mapping['infrautils'] = ('https://docs.opendaylight.org/projects/infrautils/en/v1.8.0/', None)
intersphinx_mapping['mdsal'] = ('https://docs.opendaylight.org/projects/mdsal/en/v6.0.4/', None)
intersphinx_mapping['odl-integration-test'] = ('https://docs.opendaylight.org/projects/integration-test/en/latest/', None)
intersphinx_mapping['odl-integration-packaging'] = ('https://docs.opendaylight.org/projects/integration-packaging/en/latest/', None)
intersphinx_mapping['odl-releng-builder'] = ('https://docs.opendaylight.org/projects/releng-builder/en/latest/', None)
intersphinx_mapping['opflex'] = ('https://docs.opendaylight.org/projects/opflex/en/latest/', None)

# Projects that have stable/branches
intersphinx_mapping['aaa'] = ('https://docs.opendaylight.org/projects/aaa/en/stable-aluminium/', None)
intersphinx_mapping['bgpcep'] = ('https://docs.opendaylight.org/projects/bgpcep/en/stable-aluminium/', None)
intersphinx_mapping['daexim'] = ('https://docs.opendaylight.org/projects/daexim/en/stable-aluminium/', None)
intersphinx_mapping['genius'] = ('https://docs.opendaylight.org/projects/genius/en/stable-aluminium/', None)
intersphinx_mapping['integration-distribution'] = ('https://docs.opendaylight.org/projects/integration-distribution/en/stable-aluminium/', None)
intersphinx_mapping['jsonrpc'] = ('https://docs.opendaylight.org/projects/jsonrpc/en/stable-aluminium/', None)
intersphinx_mapping['lispflowmapping'] = ('https://docs.opendaylight.org/projects/lispflowmapping/en/stable-aluminium/', None)
intersphinx_mapping['netconf'] = ('https://docs.opendaylight.org/projects/netconf/en/stable-aluminium/', None)
intersphinx_mapping['netvirt'] = ('https://docs.opendaylight.org/projects/netvirt/en/stable-aluminium/', None)
intersphinx_mapping['openflowplugin'] = ('https://docs.opendaylight.org/projects/openflowplugin/en/stable-aluminium/', None)
intersphinx_mapping['ovsdb'] = ('https://docs.opendaylight.org/projects/ovsdb/en/stable-aluminium/', None)
intersphinx_mapping['transportpce'] = ('https://docs.opendaylight.org/projects/transportpce/en/stable-aluminium/', None)

# OpenDaylight Documentation Releases
intersphinx_mapping['odl-silicon'] = ('https://docs.opendaylight.org/en/latest/', None)
intersphinx_mapping['odl-aluminium'] = ('https://docs.opendaylight.org/en/stable-aluminium/', None)
intersphinx_mapping['odl-magnesium'] = ('https://docs.opendaylight.org/en/stable-magnesium/', None)
intersphinx_mapping['odl-sodium'] = ('https://docs.opendaylight.org/en/stable-sodium/', None)
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
    # URL returns a 403 Forbidden
    'https://www.osgi.org',
    # Ignore anchors on github.com because linkcheck fails on them
    '^http[s]://github.com/.*#',
    # Ignore webchat anchors because '#' is not an anchor for this app
    'https://web.libera.chat/#',
    # Ignore google docs anchors
    'https://docs.google.com/presentation/d/1bnwj8CrFGo5KekONYSeIHySdkoXZiewJxkHcZjXnzkQ/edit#slide=id.g17d8ae4d92_0_137',
    # Ignore local static contents
    '../_static/OpenDaylight-Technical-Charter-LFN-Projects-LLC-FINAL.pdf',
    # Ignore IETF URLs often not reachable from Jenkins minions
    # because of hosting connectivity issues
    '^http[s]://tools.ietf.org/html/.*',
    # pending release -- to remove once published
    'https://www.opendaylight.org/current-release-silicon',
]
linkcheck_timeout = 300

nitpicky = True
release = version

html_context = {
    'version_status': 'supported',
}

def setup(app):
    app.add_css_file("css/ribbon.css")
