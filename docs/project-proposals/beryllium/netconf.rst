Name
----

Netconf

Repo Name
---------

netconf

Description
-----------

Netconf subsystem is implementation of YANG-modeled transport protocols
and models which are developed by `IETF Netconf Workgroup`_ which
includes following:

-  `NETCONF`_
-  `RESTCONF`_

Project provides server and client implementation of these protocols,
where server part of components is build as facade for Config and MD-SAL
subsystems.

Client implementation of these protocols are to be developed in two
flavours:

-  Stand-alone clients to be used outside, providing MD-SAL APIs
-  RESTCONF / NETCONF Mountpoints for MD-SAL

Scope
-----

-  Implementation of NETCONF / RESTCONF protocols in client and server
   flavour

and YANG models related to these protocols.

-  Model-driven adaptation between NETCONF / RESTCONF server and MD-SAL
-  Model-driven adaptation Adaptation betweeen NETCONF and Config
   subsystem
-  Stand-alone clients to be used outside, providing MD-SAL APIs
-  Netconf / Restconf Mountpoints for MD-SAL

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Maros Marsalek (mmarsale, mmarsale@cisco.com)
-  Vaclav Demcak (vdemcak, vdemcak@cisco.com)
-  Tomas Cere (tcere, tcere@cisco.com)

Initial Committers
------------------

-  Tony Tkacik (ttkacik , ttkacik@cisco.com)
-  Maros Marsalek (mmarsale, mmarsale@cisco.com)

Initial Code
------------

Based on the scope initial code drop could be identified to:

-  source code from YANG Tools which exists only to support Netconf /
   Restconf

: yangtools/yang/yang-data-operations

: yangtools/websocket

: yangtools/restconf

: yangtools/model/ietf/ietf-restconf

-  source code from Controller project which exists only to support
   Netconf / Restconf

: controller/opendaylight/md-sal/sal-rest-connector

: controller/opendaylight/md-sal/sal-rest-connector-config

: controller/opendaylight/md-sal/sal-rest-docgen

: controller/opendaylight/md-sal/sal-rest-docgen-maven

: controller/opendaylight/md-sal/sal-restconf-broker

: controller/opendaylight/netconf

: controller/opendaylight/md-sal/sal-netconf-connector

: controller/opendaylight/config/netconf-config-dispatcher

: controller/opendaylight/config/config-persister-api

: controller/opendaylight/config/config-persister-directory-xml-adapter

: controller/opendaylight/config/config-persister-feature-adapter

: controller/opendaylight/config/config-persister-file-xml-adapter

Vendor Neutral
--------------

Vendor agnostic, all of initial code exists in Opendaylight codebase
(Yangtools, Controller).

Meets Board Policy (including IPR)
----------------------------------

.. _IETF Netconf Workgroup: https://datatracker.ietf.org/wg/netconf/
.. _NETCONF: https://datatracker.ietf.org/doc/rfc6241/
.. _RESTCONF: https://datatracker.ietf.org/doc/draft-ietf-netconf-restconf/