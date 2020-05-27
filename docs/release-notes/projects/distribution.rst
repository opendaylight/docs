============
Distribution
============

Overview
========

The Distribution project is the placeholder for the ODL karaf
distribution. The project currently generates 3 artifacts:

.. list-table:: Distribution Artifacts
   :widths: 20 50
   :header-rows: 1

   * - **Artifact**
     - **Description**

   * - **Managed distribution** (e.g., karaf-<version>.tar.gz)
     - This includes the managed projects in OpenDaylight
       (refer to, :ref:`managed-release`).
   * - **Common distribution** (e.g., opendaylight-<version>.tar.gz)
     - This includes managed and self-managed projects
       (refer to, :ref:`managed-release`).
   * - **ONAP distribution** (e.g., onap-karaf-<version>.tar.gz)
     - This is the distribution used in the ONAP CCSDK project.

The distribution project is also the placeholder for the distribution
scripts. Example of these scripts:

* :ref:`Clustering scripts in Distribution <getting-started-clustering-scripts>`

Behavior Changes
================

This release introduces the following behavior changes:

* ODL Karaf distribution requires Java 11-compliant JVM (Java Virtual Machine).

New and Modified Features
=========================

This release provides the following new and modified features:

* New Detnet project features are available in the common distribution.
* JSON-RPC project features are available in the managed distribution.

Deprecated Features
===================

This release removed the following features:

* COE (Container Orchestration Engine) project
* SFC (Service Function Chaining) project

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table:: Resolved Issues
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - `INTDIST-107 <https://jira.opendaylight.org/browse/INTDIST-107>`_
     - Add yang model check at distribution build

   * - `INTDIST-106 <https://jira.opendaylight.org/browse/INTDIST-106>`_
     - Create ONAP distribution

Known Issues
============

There are no known issues in this release.

