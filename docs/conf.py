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
import sys, os, csv


def update_intersphinx_mapping():
    with open('../projects_list.tsv') as fd:
        rd = csv.reader(fd, delimiter="\t", quotechar='"')
        for row in rd:
            if row:
                project = row[0]
                if project[0] == "#":
                    continue
                version = row[1]
                intersphinx_mapping[project] = (f'https://docs.opendaylight.org/projects/{project}/en/{version}/', None)


# Append to intersphinx_mapping
update_intersphinx_mapping()

# OpenDaylight Documentation Releases
intersphinx_mapping['odl-chlorine'] = ('https://docs.opendaylight.org/en/stable-chlorine/', None)
intersphinx_mapping['odl-sulfur'] = ('https://docs.opendaylight.org/en/stable-sulfur/', None)
intersphinx_mapping['odl-phosphorus'] = ('https://docs.opendaylight.org/en/stable-phosphorus/', None)
intersphinx_mapping['odl-silicon'] = ('https://docs.opendaylight.org/en/stable-silicon/', None)
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
    # Ignore ssh:// links from linkcheck
    'ssh:',
    # Ignore jenkins because it's often slow to respond.
    'https://jenkins.opendaylight.org/releng',
    'https://jenkins.opendaylight.org/sandbox',
    # The '#' in the path makes sphinx think it's an anchor
    'https://git.opendaylight.org/gerrit/#/admin/projects/releng/builder',
    'https://git.opendaylight.org/gerrit/#/c/',
    'https://git.opendaylight.org/gerrit/gitweb',
    # URL returns a 403 Forbidden
    'https://www.osgi.org',
    # Ignore anchors on github.com because linkcheck fails on them
    '^https?://github.com/.*#',
    # Ignore webchat anchors because '#' is not an anchor for this app
    'https://web.libera.chat/#',
    # Ignore google docs anchors
    'https://docs.google.com/presentation/d/1bnwj8CrFGo5KekONYSeIHySdkoXZiewJxkHcZjXnzkQ/edit#slide=id.g17d8ae4d92_0_137',
    # Ignore local static contents
    '../_static/OpenDaylight-Technical-Charter-LFN-Projects-LLC-FINAL.pdf',
    # Ignore IETF URLs often not reachable from Jenkins minions
    # because of hosting connectivity issues
    '^https?://tools.ietf.org/html/.*',
    # anchors not correctly detected by sphinx on the gate
    'http://checkstyle.sourceforge.net/config_coding.html#.*',
    # this url often has connectivity issues on the gate
    'https://www.mojohaus.org/animal-sniffer/animal-sniffer-maven-plugin/examples/checking-signatures.html',
    #Ignore announce page link till it is up
    'https://www.opendaylight.org/current-release-chlorine',
    'https://www.opendaylight.org/current-release-argon',
]
linkcheck_timeout = 300

nitpicky = True
release = version

spelling_warning = True
spelling_exclude_patterns = ['release-notes/release-notes-*', 'release-notes/projects/*']

html_context = {
    'version_status': 'supported',
}

# Helper for JIRA references
sys.path.append(os.path.abspath('ext'))
extensions.append('odl-jira')

# Set language to English
language = "en"


def setup(app):
    app.add_css_file("css/ribbon.css")
