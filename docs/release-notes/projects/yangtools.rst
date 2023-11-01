==========
YANG Tools
==========

Overview
========
YANG Tools provides a set of libraries to deal with YANG models and data modeled using them.

Behavior/Feature Changes
========================
XML and JSON parsers now ensure ``type decimal64`` values are validated to be within the range
implied by their ``fraction-digits`` statements.

New Features
============
No new features.

Removed Features
================
Code generation plugin APIs for ``yang-maven-plugin`` contained in the ``yang-maven-plugin-spi``
artifact were removed.

The ``SchemaPath`` class has been removed.

Deprecated Features
===================
No deprecated features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 10.0.0-10.0.4

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 10.0.0-10.0.4

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 10.0.5-10.0.6

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 10.0.5-10.0.6

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 10.0.7-10.0.9

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 10.0.7-10.0.9

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 10.0.10-10.0.12

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 10.0.10-10.0.12
