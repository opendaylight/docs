Bier User Guide
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

The bier project provides functionality about bier topo-mamagement and bier
channel-mamagement, and invoking south-bound-interface for device driver.


Bier User-Facing Feature
------------------------
-  **odl-bier-all**

   -  This feature contains all features/bundles of BIER project. If install this
      feature, it could provides all functions that BIER project can supports.

-  **odl-bier-models**

   -  This feature contains all models of BIER project, such as ietf-bier,
      ietf-multicast-information and so on.

-  **odl-bier-topomanager-ui**

   -  This feature can display bier-topo-manager's APIs on UIs (odl-mdsal-apidocs and
      odl-dlux-yangui).

-  **odl-bier-channel-ui**

   -  This feature can display bier-channel's APIs on UIs (odl-mdsal-apidocs and odl-dlux-yangui).

-  **odl-bier-service**

   -  This feature provides function which processing the result of bier topo-mamager and
      bier channel-mamager, and invoking south-bound-interface for driver.

-  **odl-bier-adapter**

   -  This feature provides adapter for different bier south-bound NETCONF interface, so all
      BFRs in bier domain with different NETCONF  configuration interface, they can operating
      normally together.

-  **odl-bier-driver**

   -  This feature is south-bound NETCONF interface for bier, it has implemented standard interface
      (ietf-bier). If your BFR's NETCONF interface is Non-standard, you should add your own interface
      for driver.


How To Start
-------------

Preparing for Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Forwarding devices must support Open-Flow protocol, and already configure Open-Flow parameters,
   so that OpenDaylight can discover those devices via openflow-plugin.

2. Forwarding devices must support bier configuration via NETCONF, which has standard ietf YANG model.


Installation Feature
~~~~~~~~~~~~~~~~~~~~

Run OpenDaylight and install BIER Service *odl-bier-all* as below:

   ::

       feature:install odl-bier-all

For a more detailed overview of the Bier, see the *Bier Developer Guide*.