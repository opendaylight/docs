=================
LISP Flow Mapping
=================

Overview
========

LISP (Locator ID Separation Protocol) Flow Mapping service provides mapping services,
including LISP Map-Server and LISP Map-Resolver services that store and serve mapping
data to dataplane nodes and to OpenDaylight applications. Mapping data can include
mapping of virtual addresses to physical network addresses where the virtual nodes
are reachable or hosted. Mapping data can also include a variety of routing policies
including traffic engineering and load balancing. To leverage this service,
OpenDaylight applications and services can use the northbound REST API to
define the mappings and policies in the LISP Mapping Service. Dataplane
devices capable of LISP control protocol can leverage this service through
a southbound LISP plugin. LISP-enabled devices must be configured to use this
OpenDaylight service, since their Map- Server and/or Map-Resolver.

Southbound LISP plugin supports the LISP control protocol (that is, Map-Register,
Map-Request, Map-Reply messages). It can also be used to register mappings in the
OpenDaylight mapping service.

Behavior/Feature Changes
========================

This release introduces the following behavior changes:

*

New Features
============

This release provides the following new features:

*

Deprecated Features
===================

This release removed the following features:

*

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - <bug ID>
     -

Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - <bug ID>
     -
