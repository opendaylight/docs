# -*- coding: utf-8 -*-
"""

Embeds a simple table with issues.

"""

from docutils import nodes
from docutils.parsers.rst import directives, Directive
from jira import JIRA
import sphinx

class JiraFixedIssuesDirective(Directive):
    """
    JIRA Fixed Issues directive
    """
    has_content = True
    required_arguments = 3
    optional_arguments = 0

    option_spec = {
        "project": directives.unchanged,
        "from": directives.unchanged,
        "to": directives.unchanged
    }

    def run(self):
        jira = JIRA(server="https://jira.opendaylight.org")
        prj = jira.project(self.arguments[0])
        low = self.arguments[1]
        high = self.arguments[2]

        versions = set()
        for ver in jira.project_versions(prj):
            if ver.name >= low and ver.name <= high:
                versions.add(ver.name)


        header = ('Issue Type', 'Key', 'Summary', 'Status', 'Resolution', 'Fix Version')
        table = nodes.table()
        tgroup = nodes.tgroup(cols=len(header))
        table += tgroup
        for colwidth in (1, 1, 2, 1, 1, 1):
            tgroup += nodes.colspec(colwidth=colwidth)
        thead = nodes.thead()
        tgroup += thead

        thead += self.create_table_row(header)
        tbody = nodes.tbody()
        tgroup += tbody

        for issue in jira.search_issues('project = %s AND resolution = Done AND fixVersion in (%s) ORDER BY KEY ASC' % (prj, ", ".join(versions))):
            tbody += self.create_table_row((issue.fields.issuetype, issue.key, issue.fields.summary, issue.fields.status, issue.fields.resolution, issue.fields.fixVersions))

            # FIXME: generate a table from these
#            print(issue.fields.issuetype)
#            print(issue.key)
#            print(issue.fields.summary)
#            print(issue.fields.status)
#            print(issue.fields.resolution)
#            print(issue.fields.fixVersions)

#        print(table)
#        for data_row in data:
#            tbody += self.create_table_row(data_row)

        return [table]

    def create_table_row(self, row_cells):
        row = nodes.row()
        for cell in row_cells:
            entry = nodes.entry()
            row += entry
            entry += nodes.paragraph(text=cell)
        return row

def setup(app):
    """
    :type app: sphinx.application.Sphinx
    """
    app.add_directive('jira_fixed_issues', JiraFixedIssuesDirective)
#    app.add_directive('jira_known_issues', JiraKnownIssuesDirective)

    return {
        'version': '0.1',
        'parallel_read_safe': True,
        'parallel_write_safe': False,
    }

