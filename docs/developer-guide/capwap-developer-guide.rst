CAPWAP Developer Guide
======================

Overview
--------

The Control And Provisioning of Wireless Access Points (CAPWAP) plugin
project aims to provide new southbound interface for controller to be
able to monitor and manage CAPWAP compliant wireless termination point
(WTP) network devices. The CAPWAP feature will provide REST based
northbound APIs.

CAPWAP Architecture
-------------------

The CAPWAP feature is implemented as an MD-SAL based provider module,
which helps discover WTP devices and update their states in the MD-SAL
operational datastore.

CAPWAP APIs and Interfaces
--------------------------

This section describes the APIs for interacting with the CAPWAP plugin.

Discovered WTPs
~~~~~~~~~~~~~~~

The CAPWAP project maintains list of discovered CAPWAP WTPs that is
YANG-based in MD-SAL. These models are available via RESTCONF.

-  Name: Discovered-WTPs

-  URL:
   `http://${ipaddress}:8181/restconf/operational/capwap-impl:capwap-ac-root/ <http://${ipaddress}:8181/restconf/operational/capwap-impl:capwap-ac-root/>`__

-  Description: Displays list of discovered WTPs and their basic
   attributes

API Reference Documentation
---------------------------

Go to
`http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__,
sign in, and expand the capwap-impl panel. From there, users can execute
various API calls to test their CAPWAP deployment.

