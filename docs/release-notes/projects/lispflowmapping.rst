=================
LISP Flow Mapping
=================

Overview
========

The LISP Flow Mapping service provides LISP Mapping System services.
This includes LISP Map-Server and LISP Map-Resolver services to store
and serve mapping data to data plane nodes as well as to OpenDaylight
applications. Mapping data can include mapping of virtual addresses to
physical network addresses where the virtual nodes are reachable or hosted
at. Mapping data can also include a variety of routing policies
including traffic engineering and load balancing. To leverage this
service, OpenDaylight applications and services can use the northbound
REST API to define the mappings and policies in the LISP Mapping
Service. Data plane devices capable of LISP control protocol can
leverage this service through a southbound LISP plugin. LISP-enabled
devices must be configured to use this OpenDaylight service as their Map-
Server and/or Map-Resolver.

The southbound LISP plugin supports the LISP control protocol
(Map-Register, Map-Request, Map-Reply messages), and can also be used to
register mappings in the OpenDaylight mapping service.

Behavior Changes
================

This is a maintenance release with no behavior changes.

New and Modified Features
=========================

No new features were added in this release, and no existing features were
modified.

Deprecated Features
===================

No existing features were removed in this release.

Resolved Issues
===============

No issues were resolved in this release.

Known Issues
============

The LISP Flow Mapping Jira has a `list of known open issues <https://jira.opendaylight.org/projects/LISPMAP/issues/?filter=allopenissues>`_.
