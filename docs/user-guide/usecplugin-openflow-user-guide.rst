Usecplugin-OpenFlow User Guide
==============================

The Usecplugin-OpenFlow User Guide contains information about
configuration, administration, management, using and troubleshooting the
feature.

Overview
--------

Usecplugin-OpenFlow collects information about potential OpenFlow
Packet\_In attacks to OpenDaylight. A threshold (water mark) can be set
for the Packet\_In rate which when breached will trigger Packet\_In
message information collection.

Usecplugin Architecture
-----------------------

Usecplugin listens on OpenFlow southbound interface for Packet\_In
messages. When the rate of Packet\_In breaches the high water mark the
application parses the message for header information which is
subsequently stored in YANG Data Store and a log file. Usecplugin has
PacketHandler class that implements the PacketProcessing interface to
override the OnPacketReceived notification by which the application is
notified of Packet\_In messages.

Configuring Usecplugin-OpenFlow
-------------------------------

Install the Usecplugin-OpenFlow feautre in OpenDaylight with the
``feature:install odl-usecplugin-openflow`` at the Karaf CLI.

A user can set the low water mark and high water mark for Packet\_In
rates as well as number of samples for checking the time interval to
calculate Packet\_In rate.

URI
    http://localhost:8181/apidoc/explorer/index.html#!/usecplugin(2015-01-05)

High Water Mark Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PUT URI
    http://localhost:8181/restconf/config/usecplugin:sample-data-hwm/

Sample Input
    ``{"usecplugin:sample-data-hwm": { "samples":"3000","highWaterMark":"3000"}}``

Low Water Mark Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PUT URI
    http://localhost:8181/restconf/config/usecplugin:sample-data-lwm/

Sample Input
    ``{"usecplugin:sample-data-lwm": { "samples-lwm":"2000","lowWaterMark-lwm":"2000"}}``

Administering or Managing Usecplugin-OpenFlow
---------------------------------------------

Use RPC POST APIs in the following format for getting the attack related
information.

attackID
~~~~~~~~

URI
    http://localhost:8181/restconf/operations/usecplugin:attackID

Sample Input
    ``{"usecplugin:input": { "NodeID":"openflow:1"}}``

attacksFromIP
~~~~~~~~~~~~~

URI
    http://localhost:8181/restconf/operations/usecplugin:attacksFromIP

Sample Input
    ``{"usecplugin:input": { "SrcIP":"10.0.0.1"}}``

attacksToIP
~~~~~~~~~~~

URI
    http://localhost:8181/restconf/operations/usecplugin:attacksToIP

Sample Input
    ``{"usecplugin:input": { "DstIP":"10.0.0.2"}}``

