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

Behavior/Feature Changes
========================

No behavior or feature changes in this release.

New Features
============

New yangtools and mdsal experimental features.
For more details check both projects information.

Deprecated Features
===================

No deprecated features in this release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - INTDIST-109
     - RFC7950 violation log messages in karaf.log

Known Issues
============

There are no known issues in this release.

