=================
LISP Flow Mapping
=================

Overview
========

LISP (Locator ID Separation Protocol) Flow Mapping service provides mapping
services, including LISP Map-Server and LISP Map-Resolver services that store
and serve mapping data to dataplane nodes and to OpenDaylight applications.
Mapping data can include mapping of virtual addresses to physical network
addresses where the virtual nodes are reachable or hosted.
Mapping data can also include a variety of routing policies including traffic
engineering and load balancing.
To leverage this service, OpenDaylight applications and services can use the
northbound REST API to define the mappings and policies in the LISP Mapping
Service.
Dataplane devices capable of LISP control protocol can leverage this service
through a southbound LISP plugin.
LISP-enabled devices must be configured to use this OpenDaylight service,
since their Map- Server and/or Map-Resolver.

Southbound LISP plugin supports the LISP control protocol
(that is, Map-Register, Map-Request, Map-Reply messages).
It can also be used to register mappings in the OpenDaylight mapping service.

Behavior/Feature Changes
========================

Here is the link to the features improved in this release:

`OpenDaylight JIRA Tickets - Improvement <https://jira.opendaylight.org/issues/?jql=project+%3D+lispflowmapping+AND+type+%3D+Improvement+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

New Features
============

Here is the link to the new features introduced in this release:

`OpenDaylight JIRA Tickets - New Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+lispflowmapping+AND+type+%3D+%22New+Feature%22+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Deprecated Features
===================

Here is the link to the features removed in this release:

`OpenDaylight JIRA Tickets - Deprecated Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+lispflowmapping+AND+type+%3D+Deprecate+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Resolved Issues
===============

Here is the link to the resolved issues fixed in this release:

`OpenDaylight JIRA Tickets - Resolved Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+lispflowmapping+AND+type+%3D+Bug+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_


Known Issues
============

Here is the link to the known issues exist in this release:

`OpenDaylight JIRA Tickets - Known Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+lispflowmapping+AND+type+%3D+Bug+AND+status+not+in+%28Resolved%2C+Done%2C+Closed%29+ORDER+BY+issuetype+DESC%2C+key+ASC>`_
