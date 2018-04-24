.. _nemo-user-guide:

NEtwork MOdeling (NEMO)
=======================

This section describes how to use the NEMO feature in OpenDaylight
and contains contains configuration, administration, and management
sections for the feature.

Overview
--------

With the network becoming more complicated, users and applications must handle
more complex configurations to deploy new services. NEMO project aims to simplify
the usage of network by providing a new intent northbound interface (NBI). Instead
of tons of APIs, users/applications just need to describe their intent without
caring about complex physical devices and implementation means. The intent will
be translated into detailed configurations on the devices in the NEMO engine. A
typical scenario is user just need to assign which nodes to implement an VPN,
without considering which technique is used.

NEMO Engine Architecture
------------------------

* NEMO API
  * The NEMO API provide users the NEMO model, which guides users how to construct the
  instance of intent, and how to construct the instance of predefined types.
* NEMO REST
  * The NEMO REST provides users REST APIs to access NEMO engine, that is, user could
  transmit the intent instance to NEMO engine through basic REST methods.

Installing NEMO engine
----------------------

To install NEMO engine, download OpenDaylight and use the Karaf console
to install the following feature:

odl-nemo-engine-ui

Administering or Managing NEMO Engine
-------------------------------------

After install features NEMO engine used, user could use NEMO to express his intent
with NEMO UI or REST APIs in apidoc.

Go to ``http://{controller-ip}:8181/index.html``. In this interface, user could go to
NEMO UI, and use the tabs and input box to input intent, and see the state of intent
deployment with the image.

Go to ``http://{controller-ip}:8181/apidoc/explorer/index.html``. In this interface, user
could REST methods "POST", "PUT","GET" and "DELETE" to deploy intent or query the state
of deployment.

Tutorials
---------

Below are tutorials for NEMO Engine.

Using NEMO Engine
~~~~~~~~~~~~~~~~~

The purpose of the tutorial is to describe how to use use UI to deploy intent.

Overview
^^^^^^^^

This tutorial will describe how to use the NEMO UI to check the operated resources, the steps
to deploy service, and the ultimate state.

Prerequisites
^^^^^^^^^^^^^

To understand the tutorial well, we hope there are a physical or virtual network exist, and
OpenDaylight with NEMO engine must be deployed in one host.

Target Environment
^^^^^^^^^^^^^^^^^^

The intent expressed by NEMO model is depended on network resources, so user need to have enough
resources to use, or else, the deployment of intent will fail.

Instructions
^^^^^^^^^^^^

-  Run the OpenDaylight distribution and install odl-nemo-engine-ui from the Karaf console.
-  Go to ``http://{controller-ip}:8181/index.html``, and sign in.
-  Go the NEMO UI interface. And Register a new user with user name, password, and tenant.
-  Check the existing resources to see if it is consistent with yours.
-  Deploy service with NEMO model by the create intent menu.

