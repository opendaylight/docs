Sphinx extensions
=================

We currently only one extension, hosted in ``odl-jira``. This extension provides two new directives,
``jira_fixed_issues`` and  ``jira_known_issues``, which render a table summarizing Jira issues for
a range of releases like this:

 .. code-block:: rst

    .. jira_known_issues::
       :project: CONTROLLER
       :versions: 4.0.0-4.0.3

