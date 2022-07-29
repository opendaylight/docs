==========
YANG Tools
==========

Overview
========

YANG Tools provides a set of libraries to deal with YANG models and data modeled using them.

Behavior/Feature Changes
========================
YANG parser's memory efficiency has been improved by about 5x on service-provider-grade device
models. This comes at the cost of removal of ``SchemaNode.getPath()`` method. The returned
``SchemaPath`` did not correctly provide statement identification anyway, so was of quite limited
use in general schema navigation. Users relying on it for lookups need to update their algorithm
to explicitly track schema tree navigation -- using utilities like ``SchemaInferenceStack``,
``EffectiveStatementInference``, ``DataSchemaContextTree``.

The type mapping of ``type decimal64`` has been changed to a dedicated ``Decimal64`` class, similar
to ``uint8`` and other built-in YANG types.

YANG parser will now validate the argument to ``unique`` statement against its surroundings.
This specifically means that if a ``unique`` statement contains schema node identifiers that do
not resolve to valid statements, the module will be rejected with a SourceException.

YANG parser will now rejects attempts to import-with-revision a YANG-1.1 module into a YANG-1
module, as per RFC7950 guidelines.

New Features
============
No new features.

Deprecated Features
===================
Code generation plugin APIs for ``yang-maven-plugin`` contained in the ``yang-maven-plugin-spi``
artifact are deprecated and will be removed in the next major release. Their replacement live
in maven-agnostic ``plugin-generator-api``.

The ``SchemaPath`` class has been deprecated and will be removed in the next major release. Please
use its correct replacements, ``SchemaNodeIdentifier`` and ``EffectiveStatementInference``, which
provide more powerful capabilities.

The ``CheckedBuilder`` and ``Builder`` concepts have been deprecated and will be removed in the next
major release. Use of these interfaces makes life difficult when reasoning about callers of a
particular ``build()`` method.

The ``IllegalArgumentCodec`` concept has been deprecated and will be removed in the next major release.
Its semantics are quite confusing and it turned out to be hiding more problems than solving. Users
are advised to define their replacements with semantics appropriate to their use case.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: YANGTOOLS
   :versions: 9.0.0-9.0.0

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: YANGTOOLS
   :versions: 9.0.0-9.0.0
