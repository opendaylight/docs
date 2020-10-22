# -*- coding: utf-8 -*-
"""

Embeds a simple table with issues.

"""

from jira import JIRA
import sphinx
from sphinxcontrib.serializinghtml import JSONHTMLBuilder
from docutils.parsers.rst import directives, Directive, roles

class JiraIssuesDirective(Directive):
    """
    JIRA Fixed Issues directive
    """
    required_arguments = 1

    option_spec = {
        "project": directives.unchanged,
        "low": directives.unchanged,
        "high": directives.unchanged
    }

    def run(self):
        return ""

def setup(app):
    """
    :type app: sphinx.application.Sphinx
    """
    app.add_directive('jira_fixed_issues', JiraFixedIssuesDirective)
#    app.add_directive('jira_known_issues', JiraKnownIssuesDirective)




#jira = JIRA(server="https://jira.opendaylight.org")

# FIXME: project should be input
# FIXME: version range should be input
# FIXME: query versions in range from nexus.opendaylight,org (metadata XML)
# FIXME: fixed: project = CONTROLLER AND resolution = Done AND fixVersion in (4.0.0,4.0.1,4.0.2,4.0.3) ORDER BY KEY ASC
# FIXME: known: project = CONTROLLER AND affectedVersion in (4.0.0,4.0.1,4.0.2,4.0.3) and fixVersion not in (4.0.0,4.0.1,4.0.2,4.0.3) ORDER BY KEY ASC
#for issue in jira.search_issues('project = CONTROLLER AND fixVersion in (4.0.0, 4.0.1, 4.0.2, 4.0.3)'):
##   :columns: Issue Type;Key;Summary;Status;Resolution;fixVersion
#    print(issue.type)
#    print(issue.key)
#    print(issue.summary)
#    print(issue.status)
#    print(issue.resolution)
#    print(issue.fixVersion)




