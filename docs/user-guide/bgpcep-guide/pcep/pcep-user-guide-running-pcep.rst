.. _pcep-user-guide-running-pcep:

Running PCEP
============
This section explains how to install PCEP plugin.

1. Install PCEP feature - ``odl-bgpcep-pcep``.
   Also, for sake of this sample, it is required to install RESTCONF.
   In the Karaf console, type command:

   .. code-block:: console

      feature:install odl-restconf odl-bgpcep-pcep

2. The PCEP plugin contains a default configuration, which is applied after the feature starts up.
   One instance of PCEP plugin is created (named *pcep-topology*), and its presence can be verified via REST:

   **URL:** ``restconf/operational/network-topology:network-topology/topology/pcep-topology``

   **Method:** ``GET``

   **Response Body:**

   .. code-block:: xml

      <topology xmlns="urn:TBD:params:xml:ns:yang:network-topology">
          <topology-id>pcep-topology</topology-id>
          <topology-types>
              <topology-pcep xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep"></topology-pcep>
          </topology-types>
      </topology>
