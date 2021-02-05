#!/usr/bin/env python

##############################################################################
# Copyright (c) 2021 Orange, Inc. and others.  All rights reserved.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

import requests

BASE_URL = "https://jira.opendaylight.org/"
REST_BASE_URL = BASE_URL + "rest/api/2/"
BROWSE_BASE_URL = BASE_URL + "browse/"
TYPE_APPLICATION_JSON = {'Content-Type': 'application/json', 'Accept': 'application/json'}
SEARCH_SUFFIX = "search?jql="
JQL_QUERY = "project = CONTROLLER AND resolution = Done AND fixVersion in (3.0.0,3.0.1) ORDER BY KEY ASC"
response = requests.request("GET",
                            REST_BASE_URL + SEARCH_SUFFIX + JQL_QUERY,
                            headers=TYPE_APPLICATION_JSON)

def create_issue_link(name: str):
    return "`" + name + " <" + BROWSE_BASE_URL + name + ">`_"

res = response.json()
issues = res['issues']
print(','.join(['issue', 'key', 'summary', 'status', 'resolution']))
for issue in issues:
    print('"' + '","'.join([
        issue['fields']['issuetype']['name'],
        create_issue_link(issue['key']),
        issue['fields']['summary'],
        issue['fields']['status']['name'],
        issue['fields']['resolution']['name']
        ])
          + '"')
