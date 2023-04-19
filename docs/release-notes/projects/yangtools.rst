==========
YANG Tools
==========

Overview
========
YANG Tools provides a set of libraries to deal with YANG models and data modeled using them.

Behavior/Feature Changes
========================
``ImmutableOffsetMap`` and ``SingletonSet`` classes now use the Serialization Proxy Pattern,
improving their serialization footprint.

A large number of abstract classes and interfaces not intended to be directly subclasses/implemented
are now ``sealed``. This results in better API definitions and provides a clearer guidance to users.
This change also means these can no longer be mocked through Mockito and similar frameworks. Users
are advised to use concrete implementations instead.

New Features
============
YANG Parser now supports the ``module-tag`` as defined in `RFC819 <https://www.rfc-editor.org/rfc/rfc8819.html>`__.

Removed Features
================
The ``CheckedBuilder`` and ``Builder`` concepts have been removed in this release.

The ``IllegalArgumentCodec`` concept has been removed in this release.

The support for resolving inter-module dependencies based on semantic version has been removed.

Deprecated Features
===================
Code generation plugin APIs for ``yang-maven-plugin`` contained in the ``yang-maven-plugin-spi``
artifact are deprecated and will be removed in the next major release. Their replacement live
in maven-agnostic ``plugin-generator-api``.

The ``SchemaPath`` class has been deprecated and will be removed in the next major release. Please
use its correct replacements, ``SchemaNodeIdentifier`` and ``EffectiveStatementInference``, which
provide more powerful capabilities.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 9.0.0-9.0.1

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 9.0.0-9.0.1

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 9.0.2-9.0.5

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 9.0.2-9.0.5

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 9.0.6-9.0.6

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 9.0.6-9.0.6

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 9.0.7-9.0.7

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 9.0.7-9.0.7
