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
            # FIXME: generate a table from these
            print(issue.fields.issuetype)
            print(issue.key)
            print(issue.fields.priority)
            print(issue.fields.summary)
            print(issue.fields.status)
            print(issue.fields.resolution)
            print(issue.fields.fixVersions)


        return result

def setup(app):
    """
    :type app: sphinx.application.Sphinx
    """
    # FIXME: parallel_read_safe
    # FIXME: parallel_write_safe ?
    app.add_directive('jira_fixed_issues', JiraFixedIssuesDirective)
#    app.add_directive('jira_known_issues', JiraKnownIssuesDirective)



