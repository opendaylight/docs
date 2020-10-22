# -*- coding: utf-8 -*-
"""

Embeds a simple table with issues.

"""

from docutils import nodes
from docutils.parsers.rst import directives, Directive
from jira import JIRA
import re
import sphinx

class JiraFixedIssuesDirective(Directive):
    """
    JIRA Fixed Issues directive
    """
    has_content = True
    required_arguments = 0
    optional_arguments = 0

    option_spec = {
        "project": directives.unchanged_required,
        "versions": directives.unchanged_required,
    }

    def run(self):
        jira = JIRA(server="https://jira.opendaylight.org")
        prj = jira.project(self.options.get('project'))
        (from_ver, to_ver) = self.options.get('versions').split('-', 1)

        versions = set()
        for ver in jira.project_versions(prj):
            if ver.name >= from_ver and ver.name <= to_ver:
                versions.add(ver.name)
        versions = ", ".join(versions)

        # FIXME: this is not quite nice: can we emit the table markup directly
        table = [
            '.. list-table:: Issues resolved in versions %s through %s' % (from_ver, to_ver),
            # FIXME: bind to https://datatables.net/
            '   :class: datatable',
            '   :header-rows: 1',
            '   :widths: auto',
            '',
            '   * - Type',
            '     - Key',
            '     - Summary',
            '     - Resolution',
            '     - Fix Version(s)',
        ]

        issues = jira.search_issues('project = %s AND resolution is not EMPTY AND fixVersion in (%s) ORDER BY type ASC' % (prj, versions))
        for issue in issues:
            # Groom fixVersions
            fixVersions = set()
            for version in issue.fields.fixVersions:
                fixVersions.add(version.name)
            fixVersions = list(fixVersions)
            fixVersions.sort()

            table.append('   * - .. image:: %s' % issue.fields.issuetype.iconUrl)
            table.append('          :align: center')
            table.append('          :alt: %s' % issue.fields.issuetype.name)
            table.append('     - `%s <https://jira.opendaylight.org/browse/%s>`_' % (issue.key, issue.key))
            table.append('     - %s' % issue.fields.summary)
            table.append('     - %s' % issue.fields.resolution)
            table.append('     - %s' % ", ".join(fixVersions))

        table.append('')

        for idx, line in enumerate(table):
            self.content.data.insert(idx, line)
            self.content.items.insert(idx, (None, idx))

        node = nodes.container()
        self.state.nested_parse(self.content, self.content_offset, node)
        return node.children

class JiraKnownIssuesDirective(Directive):
    """
    JIRA Known Issues directive
    """
    has_content = True
    required_arguments = 0
    optional_arguments = 0

    option_spec = {
        "project": directives.unchanged_required,
        "versions": directives.unchanged_required,
    }

    def run(self):
        jira = JIRA(server="https://jira.opendaylight.org")
        prj = jira.project(self.options.get('project'))
        (from_ver, to_ver) = self.options.get('versions').split('-', 1)

        versions = set()
        for ver in jira.project_versions(prj):
            if ver.name >= from_ver and ver.name <= to_ver:
                versions.add(ver.name)
        versions = ", ".join(versions)

        # FIXME: this is not quite nice: can we emit the table markup directly
        table = [
            '.. list-table:: Issues affecting versions %s through %s' % (from_ver, to_ver),
            # FIXME: bind to https://datatables.net/
            '   :class: datatable',
            '   :header-rows: 1',
            '   :widths: auto',
            '',
            '   * - Type',
            '     - Key',
            '     - Summary',
            '     - Status',
            '     - Affected Version(s)',
            '     - Fix Version(s)',
        ]

        issues = jira.search_issues('project = %s AND affectedVersion in (%s) AND fixVersion NOT in (%s) ORDER BY type ASC' % (prj, versions, versions))
        for issue in issues:
            # Groom fixVersions
            fixVersions = set()
            for version in issue.fields.fixVersions:
                fixVersions.add(version.name)
            fixVersions = list(fixVersions)
            fixVersions.sort()

            # Groom affectedVersions
            affectedVersions = set()
            for version in issue.fields.versions:
                affectedVersions.add(version.name)
            affectedVersions = list(affectedVersions)
            affectedVersions.sort()

            table.append('   * - .. image:: %s' % issue.fields.issuetype.iconUrl)
            table.append('          :align: center')
            table.append('          :alt: %s' % issue.fields.issuetype.name)
            table.append('     - `%s <https://jira.opendaylight.org/browse/%s>`_' % (issue.key, issue.key))
            table.append('     - %s' % issue.fields.summary)
            table.append('     - %s' % issue.fields.status)
            table.append('     - %s' % ", ".join(affectedVersions))
            table.append('     - %s' % ", ".join(fixVersions))

        table.append('')

        for idx, line in enumerate(table):
            self.content.data.insert(idx, line)
            self.content.items.insert(idx, (None, idx))

        node = nodes.container()
        self.state.nested_parse(self.content, self.content_offset, node)
        return node.children

def setup(app):
    """
    :type app: sphinx.application.Sphinx
    """
    app.add_directive('jira_fixed_issues', JiraFixedIssuesDirective)
    app.add_directive('jira_known_issues', JiraKnownIssuesDirective)

    return {
        'version': '0.1',
        'parallel_read_safe': True,
        'parallel_write_safe': True,
    }

