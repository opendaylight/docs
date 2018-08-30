Name
----

OpenDaylight Controller
=======================

Description
-----------

The OpenDaylight Controller is a highly available, modular, extensible,
scalable, and multi-protocol Controller infrastructure built for SDN
deployment on modern heterogenous multi-vendor networks. The model
driven Service Abstraction Layer provides the needed abstractions to
support multiple Southbound protocols via Plugins. The Application
oriented extensible north-bound architecture provides a rich set of
Northbound APIs via

-  RESTful web services for loosely coupled applications and
-  OSGi services for co-located applications

The OSGi framework, upon which the Controller platform is built on is
responsible for the Modular and extensible nature of the Controller and
also provides the versioning and life-cycle management for OSGi modules
and services.

Please see also the `OpenDaylight Controller Overview`_ and
`OpenDaylight Controller Architectural Framework`_.

Scope
-----

The scope of the OpenDaylight controller includes:

-  Base OSGi Framework
-  HA, Clustering
-  Service Abstraction Layer (SAL)
-  OpenFlow 1.0 Southbound Plugin
-  Northbound API (OSGi framework and REST)
-  Host-Tracker
-  Routing.Djikstra
-  Stats Manager
-  GUI (basic)
-  Forwarding Manager\*
-  Switch Manager\*
-  Topology Manager\*
-  Sample Apps

``* currently limited to functionality that is possible via Open Flow 1.0``

Resources Committed (developers committed to working)
-----------------------------------------------------

Committers and four additional four contributors listed below are
committed as resources for development:

Committers:

-  Alessandro Boch aboch@cisco.com
-  Andrew Kim andrekim@cisco.com
-  Bhushan Kanekar bkanekar@cisco.com
-  Chi-Vien Ly chivly@cisco.com
-  Ed Warnicke eaw@cisco.com
-  Giovanni Meo gmeo@cisco.com
-  Jason Ye yisye@cisco.com
-  Kalvin Hom kahom@cisco.com
-  Madhu Venugopal mavenugo@gmail.com
-  Patrick Chu patrichu@cisco.com
-  Venkatraghavan Sankarasubbu vensanka@cisco.com
-  Ying-Sheng Wen yinwen@cisco.com

Additional Contributors

-  Tony Tkacik ttkacik@cisco.com
-  Lukas Sedlak lsedlak@cisco.com
-  Martin Vitez mvitez@cisco.com
-  Maros Marsalek mmarsale@cisco.com

Initial Committers
------------------

-  Alessandro Boch aboch@cisco.com
-  Andrew Kim andrekim@cisco.com
-  Bhushan Kanekar bkanekar@cisco.com
-  Chi-Vien Ly chivly@cisco.com
-  Ed Warnicke eaw@cisco.com
-  Giovanni Meo gmeo@cisco.com
-  Jason Ye yisye@cisco.com
-  Kalvin Hom kahom@cisco.com
-  Madhu Venugopal mavenugo@gmail.com
-  Patrick Chu patrichu@cisco.com
-  Venkatraghavan Sankarasubbu vensanka@cisco.com
-  Ying-Sheng Wen yinwen@cisco.com

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

MeetsBoardPolicy(including IPR)
-------------------------------

.. _OpenDaylight Controller Overview: OpenDaylight_Controller:Overview
.. _OpenDaylight Controller Architectural Framework: OpenDaylight_Controller:Architectural_Framework