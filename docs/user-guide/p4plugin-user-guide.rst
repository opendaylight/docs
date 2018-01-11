.. _p4plugin-user-guide:

P4 Plugin User Guide
====================

Overview
--------

P4 is a high-level language for expressing how packets are processed by the pipeline
of a network forwarding element such as a switch, network processing units, software
switches (bmv2), etc. P4 itself is protocol independent but allows for the expression
of forwarding plane protocols. It is based upon an abstract forwarding model called PISA
(Protocol Independent Switch Architecture). In the Oxygen release, the P4 Plugin project
is aimed to provide basic functions for P4 targets, such as channel and device management,
table population, packet-in and packet-out process, etc.


P4 Plugin User-Facing Features
------------------------------
-  **odl-p4plugin-all**

   -  This feature contains all other features/bundles of P4 Plugin project. If you
      install it, it provides all functions that the P4 Plugin project can support.

-  **odl-p4plugin-runtime**

   -  This feature provides a function which implements a gRPC client that provides RPCs
      for users, such as setting and retrieving forwarding pipeline config dynamically,
      complete table entry population entry and packet out procedures, etc.

-  **odl-p4plugin-netconf-adapter**

   -  This feature mainly provides function about collecting device resource.


How To Start
-------------

Preparing for Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Forwarding devices must support NETCONF, so that OpenDaylight can connect to them
   and collect resoures via NETCONF.

2. Forwarding devices must support gRpc and run P4 program, so that OpenDaylight
   can set the forwarding pipeline config, complete table entry population and packet
   in/out procedure, etc.



Installation Feature
~~~~~~~~~~~~~~~~~~~~

Run OpenDaylight and install P4 Plugin Service *odl-p4plugin-all* as shown below:

   feature:install odl-p4plugin-all

For a more detailed overview of the P4 Plugin, see the :ref:`p4plugin-dev-guide`.
