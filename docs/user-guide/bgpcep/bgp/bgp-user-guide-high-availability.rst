.. _bgp-user-guide-high-availability:

High Availability
=================
Running OpenDaylight BGP in clustered environment brings an advantage of the plugin's high availability (HA).
This section illustrates a basic scenario for HA, also presents a configuration for clustered OpenDaylight BGP.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
Following example shows a configuration for running BGP in clustered environment.

#. As the first step, configure (replicated *deafult* shard and *topology* shard if needed) and run OpenDaylight in clustered environment, install BGP and RESTCONF.

#. On one node (OpenDaylight instance), configure BGP speaker instance and neighbor. In addition, configure BGP topology exporter if required. The configuration is shared across all interconnected cluster nodes, however BGP become active only on one node. Other nodes with configured BGP serves as stand-by backups.

#. Remote peer should be configured to accept/initiate connection from/to all OpenDaylight cluster nodes with configured BGP plugin.

#. Connect remote peer, let it advertise some routes. Verify routes presence in Loc-RIB and/or BGP topology exporter instance on all nodes of the OpenDaylight cluster.

.. warning::

   Replicating RIBs across the cluster nodes is causing severe scalability issue and overall performance degradation. To avoid this problems, configure BGP RIB module as a separate shard without enabled replication. Change configuration on all nodes as following (`configuration/initial`):

   * In ``modules.conf`` add a new module:
      .. code-block:: console

         {
             name = "bgp_rib"
             namespace = "urn:opendaylight:params:xml:ns:yang:bgp-rib"
             shard-strategy = "module"
         }

   * In ``module-shards.conf`` define a new module shard:
      .. code-block:: console

         {
             name = "bgp_rib"
             shards = [
                 {
                     name="bgp_rib"
                     replicas = [
                         "member-1"
                     ]
                 }
             ]
         }

   **Note:** Use correct member name in module shard configuration.

Failover scenario
^^^^^^^^^^^^^^^^^
Following section presents a basic BGP speaker failover scenario on 3-node OpenDaylight cluster setup.

.. figure:: ./images/BGP_HA.png
   :alt: BGP HA setup.

   Once the OpenDaylight BGP is configured, the speaker become active on one of the cluster nodes. Remote peer can establish connection with this BGP instance.
   Routes advertised by remote peer are replicated, hence RIBs state on all nodes is the same.

-----

.. figure:: ./images/BGP_HA_failure.png
   :alt: Node went down.

   In a case a cluster node, where BGP instance is running, goes down (unexpected failure, restart), active BGP session is dropped.

-----

.. figure:: ./images/BGP_HA_recovery.png
   :alt: BGP recovery.

   Now, one of the stand-by BGP speaker instances become active. Remote peer establishes new connection and advertises routes again.
