==================================
2024.09 Scandium Platform Upgrade
==================================

This document describes the steps to help users upgrade from Calcium
to Scandium platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:scandium-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. contents:: Contents

Preparation
-----------

JDK 21 Version
^^^^^^^^^^^^^^
2024.09 Scandium, requires Java 21, both during compile-time and run-time.
Make sure to install JDK 21 corresponding to at least ``openjdk-21.0.8``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 13.0.11. to 14.0.3. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 14.0.3. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[14,15)".

 .. code-block:: shell

  bump-odl-version odlparent 13.0.11 14.0.3

2. Update the direct yangtools version references from 13.0.2 to 14.0.4,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 14.0.4. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[14,15)" instead of "[13,14)".

 .. code-block:: shell

  bump-odl-version yangtools 13.0.2 14.0.4

3. Update the MD-SAL version from 13.0.1 to 14.0.2. There should not be
   any reference to **org.opendaylight.mdsal**, except for 14.0.2.

 .. code-block:: shell

  bump-odl-version mdsal 13.0.1 14.0.2

4. Update the Controller version from 9.0.2 to 10.0.2. There should not be
   any reference to **org.opendaylight.controller**, except for 10.0.2.

 .. code-block:: shell

  bump-odl-version controller 9.0.2 10.0.2

5. Update the InfraUtils version from 6.0.6. to 7.0.3. There should not be
   any reference to **org.opendaylight.infrautils**, except for 7.0.3.

 .. code-block:: shell

  bump-odl-version infrautils 6.0.6 7.0.3

6. Update the AAA version from 0.19.3 to 0.20.1 There should not be
   any reference to **org.opendaylight.aaa**, except for 0.20.1

 .. code-block:: shell

  bump-odl-version aaa 0.19.3 0.20.1

7. Update the NETCONF version from 7.0.4 to 8.0.2 There should not be
   any reference to **org.opendaylight.netconf**, except for 8.0.2

 .. code-block:: shell

  bump-odl-version netconf 7.0.4 8.0.2

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
       <feature version="[14,15)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------
None.

YANG Tools Impacts
------------------
None.

MD-SAL Impacts
--------------
None.

Netconf Impacts
---------------
None.

AAA Impacts
-----------
None.

