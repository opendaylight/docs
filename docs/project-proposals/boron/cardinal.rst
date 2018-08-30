Name
----

Cardinal - OpenDaylight Monitoring as a Service

Repo Name
---------

cardinal

Description
-----------

`Project Main page`_

In current legacy network, NMS (Network Management Systems) is a viable
approach to provide a centralized system that monitors and controls
remote/managed devices located throughout the network, using for
examplle SNMP (the basic protocol). Of-course there are others protocol
like TL1, TMF/Corba that are also being leveraged to monitor the managed
network.

| With the advent of Software Defined Networks, the basic need arises to
  monitor the network (Controller, deployed features, network etc.). As
  a first step, on priority the need arises to expose the SDN
  Controller' (OpenDaylight) health/statistics to existing legacy NMS
  applications. With SDN networks yet to provide inter-working for
  monitoring/management functionality, the need arises to at least
  enable the NMS operators to get access to health/diagnostics
  information from/of SDN Controller.
| |Cardinal1.PNG|

Scope
-----

Cardinal (OpenDaylight Monitoring as a Service) proposes a solution in
OpenDaylight that extends the following for a remote NMS:

-  OpenDaylight MIB (Management Information Base) defined in OID
   experimental
-  Enable ODL diagnostics to be exposed across SNMP for remote NMS
-  Integrate with OpenDaylight TSDR and Centinel for monitoring data and
   analytics
-  Extend ODL diagnostics across northbound for autonomous notifications
   (SNMP Traps)

|
| **Cardinal feature (Karaf support)**

-  Run snmpd/snmptrapd daemon in background once the Cardinal feature is
   turned on
-  Supported SNMP commands - snmpwalk, snmpget, snmptranslate,
   snmpgetnext
-  SNMP Autonomous events (INFO & Traps) will be supported

|
| **Cardinal Core ODL Data**

-  Introduce SNMP OID for OpenDaylight monitoring/inter-working to
   remote/legacy NMS
-  Support ODL diagnostics – ex: ODL health (CPU, Memory usage, up time
   etc.)
-  Support autonomous notifications - ODL SNMP Traps and INFO messages
-  Interacts with Karaf using SSH or REST APIs (if available)
-  Interacts with MD-SAL to store relevant data into datastore

|
| **Cardinal REST APIs**

-  Support REST GET equivalent to SNMP GET requests - to enable SDN
   Applications to retrieve ODL diagnostics
-  POST to start/stop daemon

|
| |Cardinal2.PNG|
| **OpenDaylight SNMP MIB (experimental OID)**

-  SNMP OID defining OpenDaylight diagnostics data
-  SNMP OID defining OpenDaylight autonomous notifications (Traps, INFO)

|

| **OpenDaylight diagnostics data (SNMP)**

-  Support SNMP (snmp\* requests) for exposing OpenDaylight diagnostics
   data
-  Support SNMP (INFO, TRAPS) autonomous notifications from OpenDaylight
-  Support REST API for OpenDaylight north-bound to retrieve equivalent
   to SNMP data-set from OpenDaylight north-bound
-  Integrate with TSDR and Centinel for OpenDaylight / SDN network data
   (proposed for Cardinal - Carbon)

|

**X – Data collector /Listener**

-  Listens on data according to the rules (proposed for Cardinal -
   Carbon)
-  Interacts with MD-SAL to put listener on SB data (proposed for
   Cardinal - Carbon)
-  Provide APIs to receive notifications (proposed for Cardinal -
   Carbon)
-  Persistence feature like TSDR can send notification alerts (proposed
   for Cardinal - Carbon)

|

Resources Committed (developers committed to working)
-----------------------------------------------------

| Rajani Srivastava <Srivastava.Rajani@tcs.com>
| Abhishek Chhabra <Abhishek.Chhabra@tcs.com>
| Subodh Roy <Subodh.Roy@tcs.com>
| Jasmine Arora <Jasmine.Arora@tcs.com>

Initial Committers
------------------

| Rajani Srivastava <Srivastava.Rajani@tcs.com> <GerritID: rajaniS>
| Pande Gaurav <Pande.Gaurav@tcs.com> <GerritID: pande.gaurav>

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Meets Board Policy (including IPR)
----------------------------------

See Also
--------

-  Project proposal (for Creation Review):
   |Cardinal-ODL_Monitoring_as_a_Service_V1.pdf|
-  `Project Main page`_

.. _Project Main page: Cardinal:Main

.. |Cardinal-ODL_Monitoring_as_a_Service_V1.pdf| image:: Cardinal-ODL_Monitoring_as_a_Service_V1.pdf

.. _Project Main page: Cardinal:Main

.. |Cardinal1.PNG| image:: Cardinal1.PNG
.. |Cardinal2.PNG| image:: Cardinal2.PNG