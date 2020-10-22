# -*- coding: utf-8 -*-
"""

Embeds a simple table with issues.

"""

from jira import JIRA
import sphinx
from sphinxcontrib.serializinghtml import JSONHTMLBuilder
from docutils.parsers.rst import directives, Directive, roles

class JiraFixedIssuesDirective(Directive):
    """
    JIRA Fixed Issues directive
    """
    required_arguments = 3

    option_spec = {
        "project": directives.unchanged,
        "from": directives.unchanged,
        "to": directives.unchanged
    }

    def run(self):
        jira = JIRA(server="https://jira.opendaylight.org")
        # FIXME: project should be input
        # FIXME: version range should be input
        # FIXME: query versions in range from nexus.opendaylight,org (metadata XML)
        # FIXME: fixed: project = CONTROLLER AND resolution = Done AND fixVersion in (4.0.0,4.0.1,4.0.2,4.0.3) ORDER BY KEY ASC
        ##   :columns: Issue Type;Key;Summary;Status;Resolution;fixVersion
        issues = jira.search_issues('project = CONTROLLER AND fixVersion in (4.0.0, 4.0.1, 4.0.2, 4.0.3) ORDER BY KEY ASC')
        result = [ ]

        for issue in issues:
#                {
#                    'aggregateprogress': <jira.resources.PropertyHolder object at 0x7fe3bdc5c910>,
#                    'aggregatetimeestimate': None,
#                    'aggregatetimeoriginalestimate': None,
#                    'aggregatetimespent': None,
#                    'assignee': <JIRA User: displayName='Dominik Vrbovský',
#                    'components': [],
#                    'created': '2021-09-09T05:54:21.000+0000',
#                    'creator': <JIRA User: displayName='Dominik Vrbovský', key='JIRAUSER13806', name='dominik.vrbovsky'>,
#                    'customfield_10000': '0|i03zcf:',
#                    'customfield_10001': None,
#                    'customfield_10002': None,
#                    'customfield_10201': None,
#                    'customfield_10202': None,
#                    'customfield_10203': None,
#                    'customfield_10204': None,
#                    'customfield_10205': None,
#                    'customfield_10206': None,
#                    'customfield_10207': None,
#                    'customfield_10208': None,
#                    'customfield_10500': None,
#                    'customfield_10501': None,
#                    'customfield_10502': None,
#                    'customfield_10503': None,
#                    'customfield_10504': None,
#                    'customfield_10505': None,
#                    'customfield_10506': None,
#                    'customfield_10507': None,
#                    'customfield_10601': None,
#                    'customfield_10602': None,
#                    'customfield_11400': '{}',
#                    'customfield_11700': None,
#                    'description': 'With the move to testing controllers distribution directly we need to provide an alternative to restconf so csit has something to interact with.\r\n\r\nRework the rpcs needed by csit in clustering-test-app to karaf cli commands',
#                    'duedate': None,
#                    'environment': None,
#                    'fixVersions': [<JIRA Version: name='4.0.3', id='12415'>],
#                    'issuelinks': [],
#                    'issuetype': <JIRA IssueType: name='Bug', id='10104'>,
#                    key='JIRAUSER13806',
#                    'labels': [],
#                    'lastViewed': None,
#                    name='dominik.vrbovsky'>,
#                    'priority': <JIRA Priority: name='Medium', id='3'>,
#                    'progress': <jira.resources.PropertyHolder object at 0x7fe3bdc5c940>,
#                    'project': <JIRA Project: key='CONTROLLER', name='controller', id='10113'>,
#                    'reporter': <JIRA User: displayName='Dominik Vrbovský', key='JIRAUSER13806', name='dominik.vrbovsky'>,
#                    'resolutiondate': '2021-09-13T18:44:30.000+0000',
#                    'resolution': <JIRA Resolution: name='Done', id='10000'>,
#                    'status': <JIRA Status: name='Resolved', id='5'>,
#                    'subtasks': [],
#                    'summary': 'Introduce cli commands for clustering-test-app',
#                    'timeestimate': None,
#                    'timeoriginalestimate': None,
#                    'timespent': None,
#                    'updated': '2021-09-13T18:44:30.000+0000',
#                    'versions': [],
#                    'votes': <JIRA Votes: votes=0>
#                    'watches': <JIRA Watchers at 140616118159152>,
#                    'workratio': -1,
#                }

        ##   :columns: Issue Type;Key;Summary;Status;Resolution;fixVersion
           print(issue.fields.issuetype)
           print(issue.key)
           print(issue.fields.summary)
           print(issue.fields.status)
           print(issue.fields.resolution)
           print(issue.fields.fixVersions)


        return result

def setup(app):
    """
    :type app: sphinx.application.Sphinx
    """
    app.add_directive('jira_fixed_issues', JiraFixedIssuesDirective)
#    app.add_directive('jira_known_issues', JiraKnownIssuesDirective)



