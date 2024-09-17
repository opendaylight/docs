==========
YANG Tools
==========

Overview
========
YANG Tools provides a set of libraries to deal with YANG models and data modeled using them.

Behavior/Feature Changes
========================
The mapping of YANG augmentations in ``yang-data-api`` has changed. Where previously these have
been supported by ``AugmetationNode`` and addressable via ``AugmentationIdentifier``, any augmented
nodes are now direct children of their ``data tree`` parent nodes.

``YangTextSchemaSource`` is now a ``CharSource`` rather than a ``ByteSource``. This eliminates ambiguity
and assumptions made on the text encoding character set, pushing the responsibility down to users
introducing schema sources into the system.

New Features
============
No new features.

Removed Features
================
No removed features.

Deprecated Features
===================
No deprecated features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 12.0.0-13.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 12.0.0-13.0.2

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 13.0.3-13.0.6

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 13.0.3-13.0.6