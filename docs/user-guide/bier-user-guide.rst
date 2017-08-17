.. _bier-user-guide:

BIER User Guide
===============

Overview
--------

The technology of Bit Index Explicit Replication (BIER) specifies a new
architecture for the forwarding of multicast data packets. It provides
optimal forwarding of multicast data packets through a "multicast domain".
However, it does not require the use of a protocol for explicitly building
multicast distribution trees, and it does not require intermediate nodes
to maintain any per-flow state. See specific in `draft-ietf-bier-architecture-05
<https://datatracker.ietf.org/doc/draft-ietf-bier-architecture/>`_
and related documents.

The BIER project provides functionality about BIER/BIER-TE topo-mamagement and BIER/BIER-TE
channel-mamagement, and invoking south-bound-interface for device driver.


BIER User-Facing Features
-------------------------
-  **odl-bier-all**

   -  This feature contains all other features/bundles of BIER project. If you
      install it, it provides all functions that the BIER project can support.

-  **odl-bier-models**

   -  This feature contains all models of BIER project, such as ietf-bier,
      ietf-multicast-information and so on.

-  **odl-bier-bierman**

   -  This feature generates BIER's topology from network topology, and configuration
      of BIER, BIER-TE, etc.

-  **odl-bier-channel**

   -  This feature provides function about multicast flow information configuration
      and deployment in BIER domain.

-  **odl-bier-service**

   -  This feature provides function which processing the result of BIER topo-mamager and BIER
      channel-mamager, and invoking south-bound-interface for driver.

-  **odl-bier-adapter**

   -  This feature provides adapter for different BIER south-bound NETCONF
      interfaces, so all BFRs in BIER domain with different NETCONF
      configuration interfaces and they can operate normally together.

-  **odl-bier-driver**

   -  This feature is south-bound NETCONF interface for BIER, it has implemented standard interface
      (ietf-bier). If your BFR's NETCONF interface is Non-standard, you should add your own
      interface for driver.

-  **odl-te-pce**

   - This feature provides path computation function for BIER-TE.

-  **odl-bier-app**

   -  This feature provides the interface of BIER management, which contain BIER/BIER-TE manager, channel manager, topology manager.


How To Start
-------------

Preparing for Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Forwarding devices must support the BGP-LS protocol, and already be
   configured so that OpenDaylight can discover those devices.

2. Forwarding devices must support BIER configuration via NETCONF, which has a
   standard IETF YANG model.

3. The feature *odl-bier-app* or third-party App provides the northbound interface
   of BIER management for BIER controller.


Installation Feature
~~~~~~~~~~~~~~~~~~~~

Run OpenDaylight and install BIER Service *odl-bier-all* as below::

   feature:install odl-bier-all

For a more detailed overview of the BIER, see the :ref:`bier-dev-guide`.
