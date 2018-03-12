.. _bgp-monitoring-protocol-user-guide-overview:

Overview
========
This section provides high-level overview of the BMP plugin, OpenDaylight implementation and BMP usage for SDN.

.. contents:: Contents
   :depth: 2
   :local:

BGP Monitoring Protocol
^^^^^^^^^^^^^^^^^^^^^^^
The BGP Monitoring Protocol (BMP) serves to monitor BGP sessions.
The BMP can be used to obtain route view instead of screen scraping.
The BMP provides access to unprocessed routing information (Adj-RIB-In) and processed routes (applied inbound policy) of monitored router's peer.
In addition, monitored router can provide periodic dump of statistics.

The BMP runs over TCP.
Both monitored router and monitoring station can be configured as active or passive party of the connection.
The passive party listens at particular port.
The router can be monitored by multiple monitoring stations.
BMP messages are sent by monitored router only, monitoring station supposed to collect and process data received over BMP.

.. figure:: ./images/bmp.png
   :align: center
   :alt: BMP

   The BMP overview - Monitoring Station, Monitored Router and Monitored Peers.


BMP in SDN
^^^^^^^^^^
The main concept of BMP is to monitor BGP sessions - monitoring station is aware of monitored peer's status, collects statistics and analyzes them in order to provide valuable information for network operators.

Moreover, BMP provides provides peer RIBs visibility, without need to establish BGP sessions.
Unprocessed routes may serve as a source of information for software-driven routing optimization.
In this case, SDN controller, a BMP monitoring station, collects routing information from monitored routers.
The routes are used in subsequent optimization procedures.


OpenDaylight BMP plugin
^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight BMP plugin provides monitoring station implementation.
The plugin can establish BMP session with one or more monitored routers in order to collect routing and statistical information.

* Runtime configurable monitoring station
* Read-only routes and statistics view
* Supports various routing information types

.. figure:: ./images/bmp-plugin.png
   :align: center
   :alt: BMP plugin

   OpenDaylight BMP plugin overview.

.. important:: The BMP plugin is not storing historical data, it provides current snapshot only.
