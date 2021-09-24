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

YANG parser's memory efficiency has been improved by about 15% on service-provider-grade device
models.

New Features
============
No new features.

Deprecated Features
===================
No deprecated features.

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
