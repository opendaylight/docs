==========
YANG Tools
==========

Overview
========

YANG Tools provides a set of libraries to deal with YANG models and data modeled using them.

Behavior/Feature Changes
========================
YANG parser will no longer take into account ``extension`` statements it does not recognize
through the appropriate support class. This may affect tools relying on our previous misguided
attempts to interpret their meaning.

YANG parser's memory efficiency has been improved by about 15-20% on service-provider-grade device
models.

YANG parser can now be configured to retain information about statement declaration, making it
useful for IDEs and similar tools.

New Features
============
No new features.

Deprecated Features
===================
Code generation plugin APIs for ``yang-maven-plugin`` contained in the ``yang-maven-plugin-spi``
artifact are deprecated and will be removed in the next major release. Their replacement live
in maven-agnostic ``plugin-generator-api``.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 7.0.0-7.0.8

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 7.0.0-7.0.8

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 7.0.9-7.0.9

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 7.0.9-7.0.9

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 7.0.10-7.0.14

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 7.0.10-7.0.14

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 7.0.15-7.0.17

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 7.0.15-7.0.17
