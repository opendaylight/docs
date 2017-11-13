.. _p4plugin-user-guide:

P4 Plugin User Guide
===============

Overview
--------

P4 is a high-level language for expressing how packets are processed by the pipeline 
of a network forwarding element such as a switch, network processing units, software 
switches (bmv2) and etc. P4 itself is protocol independent but allows for the expression 
of forwarding plane protocols. It is based upon an abstract forwarding model called PISA 
(Protocol Independent Switch Architecture). In the Oxygen release, the P4 Plugin project 
is aimed to provide basic functions for P4 targets, such as channel and device management, 
table population, packet-in and packet-out process and etc. 


P4 Plugin User-Facing Features
-------------------------
-  **odl-p4plugin-all**

   -  This feature contains all other features/bundles of P4 Plugin project. If you
      install it, it provides all functions that the P4 Plugin project can support.

-  **odl-p4plugin-core**

   -  This feature provides function which Implement a gRPC client, providing many RPCs 
      for users, such as setting and getting forwarding pipeline config dynamically, 
      table entry population, packet out etc. 

-  **odl-p4plugin-netconf-adapter**

   -  This feature mainly provides function about collecting device resource.


How To Start
-------------

Preparing for Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Forwarding devices must support NETCONF, so that OpenDaylight can connect them 
   and collect resoure via NETCONF. 

2. Forwarding devices must support gRpc and can run P4 program, so that OpenDaylight 
   can set forwarding pipeline config, complete table entry population and packet 
   in/out procedure etc. 



Installation Feature
~~~~~~~~~~~~~~~~~~~~

Run OpenDaylight and install P4 Plugin Service *odl-p4plugin-all* as below::

   feature:install odl-p4plugin-all

For a more detailed overview of the P4 Plugin, see the :ref:`p4plugin-dev-guide`.
