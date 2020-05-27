==========
Controller
==========

Overview
========
The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.

Behavior Changes
================

This release introduces the following behavior change:

* The persistence format used in the distributed datastore was updated for efficiency.
  Existing upgrades will trigger migration during startup.

Deprecated Features
===================

This release removed the following feature:

* All MD-SAL API's starting with ``org.opendaylight.controller.md.sal`` and ``org.opendaylight.controller.sal``
  were marked for removal. They will be removed in the next release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - `CONTROLLER-1626 <https://jira.opendaylight.org/browse/CONTROLLER-1626>`_
     - Add an option to allow CDS FE to start its generation counting from non-zero
   * - `CONTROLLER-1889 <https://jira.opendaylight.org/browse/CONTROLLER-1889>`_
     - Rework NormalizedNodePruner in terms of a forwarder
   * - `CONTROLLER-1908 <https://jira.opendaylight.org/browse/CONTROLLER-1908>`_
     - Deduplicate NodeIdentifierWithPredicate/LeafNode values from incoming streams
   * - `CONTROLLER-1909 <https://jira.opendaylight.org/browse/CONTROLLER-1909>`_
     - Deduplicate NodeIdentifierWithPredicate/LeafNode values when writing streams
   * - `CONTROLLER-1914 <https://jira.opendaylight.org/browse/CONTROLLER-1914>`_
     - Allow initial settle time to be tuned
   * - `CONTROLLER-1917 <https://jira.opendaylight.org/browse/CONTROLLER-1917>`_
     - Deprecate controller MD-SAL APIs for removal
   * - `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
     - Add Magnesium streaming format
   * - `CONTROLLER-1920 <https://jira.opendaylight.org/browse/CONTROLLER-1920>`_
     - CommitTransactionPayload results in humongous objects being allocated
   * - `CONTROLLER-1922 <https://jira.opendaylight.org/browse/CONTROLLER-1922>`_
     - Split out EntityOwnershipService implementation from distributed-datastore
   * - `CONTROLLER-1923 <https://jira.opendaylight.org/browse/CONTROLLER-1923>`_
     - Convert pre-Magnesium to Magnesium snapshots/journal entries
   * - `CONTROLLER-1924 <https://jira.opendaylight.org/browse/CONTROLLER-1924>`_
     - Migrate NormalizedNodeInputOutput to use yangtools and deprecate it
   * - `CONTROLLER-1928 <https://jira.opendaylight.org/browse/CONTROLLER-1928>`_
     - Regression detected in CSIT
   * - `CONTROLLER-1929 <https://jira.opendaylight.org/browse/CONTROLLER-1929>`_
     - Propagate TimeoutException if ActorSystem fails to terminate in time

