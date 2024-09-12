==================================
2024.03 Calcium Platform Upgrade
==================================

This document describes the steps to help users upgrade from Potassium
to Calcium platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:calcium-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. contents:: Contents

Preparation
-----------

JDK 17 Version
^^^^^^^^^^^^^^
2024.03 Calcium, requires Java 17, both during compile-time and run-time.
Make sure to install JDK 17 corresponding to at least ``openjdk-17.0.7``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 13.0.4. to 13.0.11. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 13.0.11. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[13,14)".

 .. code-block:: shell

  bump-odl-version odlparent 13.0.4 13.0.11

2. Update the direct yangtools version references from 11.0.1 to 13.0.2,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 11.0.1. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[12,13)" instead of "[11,12)".

 .. code-block:: shell

  bump-odl-version yangtools 11.0.1 13.0.2

3. Update the MD-SAL version from 12.0.1. to 13.0.1. There should not be
   any reference to **org.opendaylight.mdsal**, except for 13.0.1.

 .. code-block:: shell

  bump-odl-version mdsal 12.0.1 13.0.1

4. Update the Controller version from 8.0.1. to 9.0.2. There should not be
   any reference to **org.opendaylight.controller**, except for 9.0.2.

 .. code-block:: shell

  bump-odl-version controller 8.0.1. 9.0.2.

5. Update the InfraUtils version from 6.0.2. to 6.0.6. There should not be
   any reference to **org.opendaylight.infrautils**, except for 6.0.6.

 .. code-block:: shell

  bump-odl-version infrautils 6.0.2. 6.0.6.

6. Update the AAA version from 0.18.1. to 0.19.3 There should not be
   any reference to **org.opendaylight.aaa**, except for 0.19.3

 .. code-block:: shell

  bump-odl-version aaa 0.18.1. 0.19.3

7. Update the NETCONF version from 6.0.3 to 7.0.4 There should not be
   any reference to **org.opendaylight.netconf**, except for 7.0.4

 .. code-block:: shell

  bump-odl-version netconf 6.0.3 7.0.4

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`calcium-mri <https://git.opendaylight.org/gerrit/q/topic:calcium-mri>`_
changes for any dependent project.

Perform the following steps to save time when locally installing
any dependent project:

* For quick install:

 .. code-block:: shell

  mvn -Pq clean install

* If previously installed, go offline and/or use the
  no-snapshot-update option.

 .. code-block:: shell

  mvn -Pq -o -nsu clean install

Upgrade the ODL Parent
----------------------
The following sub-section describes how to upgrade to
the ODL Parent version 13. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-13011>`_
for more information.

Features
^^^^^^^^
Any version range referencing version of ODL Parent must be “[13,14)” for ODL Parent 13.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[13,14)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------



YANG Tools Impacts
------------------
``QNameModule`` now uses ``RevisionUnion``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``QNameModule`` has been updated to use ``RevisionUnion`` instead of holding an optional ``Revision``.
This change simplifies handling of revisions within YANG models. Additionally, new ``of()`` and ``ofRevision()``
convenience methods have been introduced, while the ``create()`` methods have been deprecated.

Exposed ``FileYangTextSource``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``FileYangTextSource`` has been introduced as a replacement for numerous static factory methods
(e.g. YangTextSource#forPath) previously used for file-backed YANG text sources.
See `YANGTOOLS-1561 <https://jira.opendaylight.org/browse/YANGTOOLS-1561>`__ for details.

Removal of ``YangModelDependencyInfo``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``YangModelDependencyInfo`` construct has been removed.
It has been replaced with ``SourceDependency`` a dedicated model that clarifies dependencies on YANG sources.
The extraction logic has been retained within``YangIRSourceInfoExtractor``.
This change allows the ``DependencyResolver`` to work directly on ``SourceInfo``.
See `YANGTOOLS-1150 <https://jira.opendaylight.org/browse/YANGTOOLS-1150>`__ for details.

Renaming of ``YangIRSource`` method
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``YangIRSchemaSource`` has been renamed to ``YangIRSource``.
Method ``getRootStatement()`` has been renamed to ``statement()``.

``YangTextSchemaSource`` is now a ``CharSource``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``YangTextSchemaSource`` has been updated to operate as a ``CharSource`` instead of ``ByteSource``.
The default encoding is now UTF-8.
See `YANGTOOLS-1508 <https://jira.opendaylight.org/browse/YANGTOOLS-1508>`__ for details.

Promotion of ``SchemaSourceRepresentation``
``SchemaSourceRepresentation`` has been promoted as an extensible framework for identifying and working
with sources of YANG schema. This framework allows for easy transformation into YANG model constructs.
``SchemaSourceRepresentation`` and its specializations are now located in ``yang.model.api.source``
As part of this promotion, ``YangTextSchemaSource`` has been removed and replaced by ``SourceIdentifier``.
See `YANGTOOLS-1150 <https://jira.opendaylight.org/browse/YANGTOOLS-1150>`__ for details.

Exposing of ``DelegatedYangTextSource``
``DelegatedYangTextSource`` was introduced to replace static factory methods in ``YangTextSource``.
This change simplifies the handling of YANG schema sources by reducing the complexity of conversions and
streamlining how CharSource and ByteSource are managed. Users are now encouraged to use ``DelegatedYangTextSource``
for handling YANG schema text sources.
See `YANGTOOLS-1561 <https://jira.opendaylight.org/browse/YANGTOOLS-1561>`__ for details.

MD-SAL Impacts
--------------

Removed ``(DOM)TransactionChainListener``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``DOMTransactionChainListener`` and ``TransactionChainListener`` have been removed.
Error reporting is now handled by attaching listeners to a separately exposed ``ListenableFuture``,
simplifying transaction chain management.
See `MDSAL-850 <https://jira.opendaylight.org/browse/MDSAL-850>`__ for details.

``mdsal-singleton-dom-impl`` renamed to ``mdsal-singleton-impl``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``mdsal-singleton-dom-impl`` has been renamed to ``mdsal-singleton-impl``.

``BindingMapping`` moved
^^^^^^^^^^^^^^^^^^^^^^^^

Exposed Completion Future from WriteOperations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``WriteOperations`` now exposes a ``FluentFuture<?>`` which completes when a transaction is committed or aborted.
This improvement allows code to react to when changes are actually committed, which is essential for tasks like
chaining cache updates.
See `MDSAL-61 <https://jira.opendaylight.org/browse/MDSAL-61>`__ for details.

Removal of ``yang.binding.RpcService``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``yang.binding.RpcService`` interface has been removed. This interface, which served as a base marker
for generated interfaces representing YANG rpc statements, has been deprecated due to outdated design
assumptions from Java 7. In its place, use ``yang.binding.Rpc`` and related lambda-compatible interfaces for a
more modern, streamlined approach.
See `MDSAL-772 <https://jira.opendaylight.org/browse/MDSAL-772>`__ for details.

PathArgument refactored to DataObjectStep
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``InstanceIdentifier.PathArgument`` has been refactored to ``DataObjectStep``, a top-level construct that simplifies
expressing paths of DataObject type references. This change streamlines method signatures and imports while
keeping the older ``AbstractPathArgument`` for serialization compatibility.
See `MDSAL-815 <https://jira.opendaylight.org/browse/MDSAL-815>`__ for details.

Netconf Impacts
------------------
Clean up XmlElement methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^
XmlElement has a number of methods which are better hosted in XmlUtil,
without the need for encapsulation.

Enforce base64 encoding for netconf-keystore
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This change Changed type to binary for all leafs that are claiming their type as
base64.
See `NETCONF-1186 <https://jira.opendaylight.org/browse/NETCONF-1186>`__ for details.

Base64 Encoding for Netconf Device Passwords
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Netconf device passwords are now encoded using Base64. This is enforced for encrypted authentication,
ensuring compatibility with RFC 7950. The RPC logic continues to handle password encoding when creating devices.
See `NETCONF-1115 <https://jira.opendaylight.org/browse/NETCONF-1115>`__ for details.

``netconf-keystore`` model has a new revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This revision introduces changes where several elements, including private keys and certificates,
are now being Base64-encoded for enhanced security and conformance with standard practices.
See `NETCONF-1186 <https://jira.opendaylight.org/browse/NETCONF-1186>`__ for details.

``sal-remote-augment`` model has a new revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``sal-remote-augment.yang`` model has been updated to revision ``2023-11-03``.
See `NETCONF-1102 <https://jira.opendaylight.org/browse/NETCONF-1102>`__ for details.

``odl-device-notification`` model has a new revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``odl-device-notification`` output has been corrected to ensure that the stream subscription results in a stream name.
Previously, it returned a ``stream-path``, but this has been changed to a ``stream-name``.
See `NETCONF-1102 <https://jira.opendaylight.org/browse/NETCONF-1102>`__ for details.


Standalone YANG Library Data Writer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A new standalone YANG library data writer was introduced to replace previous implementations that could cause
data inconsistency. This new dedicated module ensures that YANG library data is written from a single
source to prevent potential data corruption.

 .. code-block:: xml

      <dependency>
        <groupId>org.opendaylight.netconf</groupId>
        <artifactId>yanglib-mdsal-writer</artifactId>
      </dependency>

See `NETCONF-668 <https://jira.opendaylight.org/browse/NETCONF-668>`__ for details.

``odl-netconf-device`` model has a new revision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Several leaf names have been simplified, including changes like renaming between-attempts-timeout-millis
to min-backoff-millis, max-timeout-between-attempts-millis to max-backoff-millis, and sleep-factor
to backoff-multiplier.
See `NETCONF-1193 <https://jira.opendaylight.org/browse/NETCONF-1193>`__ for details.

Controller Impacts
------------------
Removal of ``RpcService`` from ``sal-cluster-admin-impl``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This change removes the usage of RpcService from sal-cluster-admin-impl to improve modularity and reduce dependencies.
If your application interacts with sal-cluster-admin-impl, ensure you adapt to this change by removing any
reliance on RpcService within this implementation.
See `CONTROLLER-2085 <https://jira.opendaylight.org/browse/CONTROLLER-2085>`__ for details.

AAA Impacts
-----------
Exception Handling for Encryption/Decryption Failures
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Error handling in the AAA module was improved to throw a ``GeneralSecurityException`` if encryption or decryption fails.
Previously, the system would log the error and return the inserted string, which could cause confusion.
See `AAA-266 <https://jira.opendaylight.org/browse/AAA-266>`__ for details.

