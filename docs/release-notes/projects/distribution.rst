============
Distribution
============

Overview
========

The Distribution project is the placeholder for the ODL karaf
distribution. The project currently generates 2 artifacts:

* The **Managed distribution** (e.g. karaf-<version>.tar.gz): This includes
  the Managed projects in OpenDaylight (See :ref:`managed-release`).

* The **Common distribution** (e.g. opendaylight-<version>.tar.gz): This
  includes Managed and Self-Managed projects (See :ref:`managed-release`).

* The **ONAP distribution** (e.g. onap-karaf-<version>.tar.gz): This is the
  distribution used in the ONAP CCSDK project.

The distribution project is also the placeholder for the distribution
scripts. Example of these scripts:

* :ref:`Clustering scripts in Distribution <getting-started-clustering-scripts>`

Behavior Changes
================

This release introduces the following behavior changes:

* ODL Karaf distribution requires Java 11-compliant JVM (Java Virtual Machine).

New and Modified Features
=========================

This releases provides the following new and modified features:

* New Detnet project features are available in the Common distribution.
* JSON-RPC project features are available in the Managed distribution.

Deprecated Features
===================

This releases removed the following features:

* COE project features
* SFC project features

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - INTDIST-107
     - Add yang model check at distribution build

   * - INTDIST-106
     - Create ONAP distribution

Known Issues
============

No Known issues in this release.

