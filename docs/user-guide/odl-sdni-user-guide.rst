.. _sdni-user-guide:

ODL-SDNi User Guide
===================

Introduction
------------

This user guide will help to setup the ODL-SDNi application.

Components
----------

SDNiAggregator, SDNi API, SDNiWrapper, and SDNiUI are the four
components in ODL-SDNi App:

-  SDNiAggregator: Connects with switch, topology, hosttracker managers
   of controller to get the topology and other related data.

-  SDNi REST API: It is a part of controller northbound, which gives the
   required information by quering SDNiAggregator through RESTCONF.

-  SDNiWrapper: This component uses the SDNi REST API and gathers the
   information required to be shared among controllers.

-  SDNiUI:This component displays all the SDN controllers which are
   connected to each other.

Troubleshooting
---------------

To work with multiple controllers, change some of the configuration in
config.ini file. For example change the listening port of one controller
to 6653 and other controller to 6663 in
/root/controller/opendaylight/distribution/opendaylight/target/distribution.opendaylight-osgipackage/opendaylight/configuration/config.ini
(i.e., of.listenPort=6653).

**OpenFlow related system parameters.**

TCP port on which the controller is listening (default 6633)
of.listenPort=6653
