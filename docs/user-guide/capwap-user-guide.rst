CAPWAP User Guide
=================

This document describes how to use the Control And Provisioning of
Wireless Access Points (CAPWAP) feature in OpenDaylight. This document
contains configuration, administration, and management sections for the
feature.

Overview
--------

CAPWAP feature fills the gap OpenDaylight Controller has with respect to
managing CAPWAP compliant wireless termination point (WTP) network
devices present in enterprise networks. Intelligent applications (e.g.
centralized firmware management, radio planning) can be developed by
tapping into the WTP network device’s operational states via REST APIs.

CAPWAP Architecture
-------------------

The CAPWAP feature is implemented as an MD-SAL based provider module,
which helps discover WTP devices and update their states in MD-SAL
operational datastore.

Scope of CAPWAP Project
-----------------------

In this release, CAPWAP project aims to only detect the WTPs and
store their basic attributes in the operational data store, which is
accessible via REST and JAVA APIs.

Installing CAPWAP
-----------------

To install CAPWAP, download OpenDaylight and use the Karaf console to
install the following feature:

odl-capwap-ac-rest

Configuring CAPWAP
------------------

As of this release, there are no configuration requirements.

Administering or Managing CAPWAP
--------------------------------

After installing the odl-capwap-ac-rest feature from the Karaf console,
users can administer and manage CAPWAP from the APIDOCS explorer.

Go to
`http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__,
sign in, and expand the capwap-impl panel. From there, users can execute
various API calls.

Tutorials
---------

Viewing Discovered WTPs
~~~~~~~~~~~~~~~~~~~~~~~

Overview
^^^^^^^^

This tutorial can be used as a walk through to understand the steps for
starting the CAPWAP feature, detecting CAPWAP WTPs, accessing the
operational states of WTPs.

Prerequisites
^^^^^^^^^^^^^

It is assumed that user has access to at least one hardware/software
based CAPWAP compliant WTP. These devices should be configured with
OpenDaylight controller IP address as a CAPWAP Access Controller (AC)
address. It is also assumed that WTPs and OpenDaylight controller share
the same ethernet broadcast domain.

Instructions
^^^^^^^^^^^^

1. Run the OpenDaylight distribution and install odl-capwap-ac-rest from
   the Karaf console.

2. Go to
   `http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__

3. Expand capwap-impl

4. Click /operational/capwap-impl:capwap-ac-root/

5. Click "Try it out"

6. The above step should display list of WTPs discovered using ODL
   CAPWAP feature.

