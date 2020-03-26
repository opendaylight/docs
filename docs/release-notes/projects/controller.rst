==========
Controller
==========

Overview
========
Controller project provides infrastructure services to other OpenDaylight
projects and as such does not have user-facing features.


The overview section is for users to identify and describe the features
that will be used by end-users (remove this paragraph).

Behavior Changes
================

This release introduces the following behavior changes:

* The persistence format used in the distributed datastore has been updated
  for efficiency. In-place upgrades will trigger data migration during first
  startup.

Deprecated Features
===================

This release removed the following features:

* All MD-SAL API's, those starting with ``org.opendaylight.controller.md.sal`` and ``org.opendaylight.controller.sal``
  are deprecated for removal and will be removed in the next release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - CONTROLLER-1626
     - Add an option to allow CDS FE to start its generation counting from non-zero
   * - CONTROLLER-1889
     - Rework NormalizedNodePruner in terms of a forwarder
   * - CONTROLLER-1908
     - Deduplicate NodeIdentifierWithPredicate/LeafNode values from incoming streams
   * - CONTROLLER-1909
     - Deduplicate NodeIdentifierWithPredicate/LeafNode values when writing streams
   * - CONTROLLER-1914
     - Allow initial settle time to be tuned
   * - CONTROLLER-1917
     - Deprecate controller MD-SAL APIs for removal
   * - CONTROLLER-1919
     - Add Magnesium streaming format
   * - CONTROLLER-1920
     - CommitTransactionPayload results in humongous objects being allocated
   * - CONTROLLER-1922
     - Split out EntityOwnershipService implementation from distributed-datastore
   * - CONTROLLER-1923
     - Convert pre-Magnesium to Magnesium snapshots/journal entries
   * - CONTROLLER-1924
     - Migrate NormalizedNodeInputOutput to use yangtools and deprecate it
   * - CONTROLLER-1928
     - Regression detected in CSIT
   * - CONTROLLER-1929
     - Propagate TimeoutException if ActorSystem fails to terminate in time

