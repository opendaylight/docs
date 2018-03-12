.. _bgp-monitoring-protocol-user-guide-running-bmp:

Running BMP
===========
This section explains how to install BMP plugin.

1. Install BMP feature - ``odl-bgpcep-bmp``.
   Also, for sake of this sample, it is required to install RESTCONF.
   In the Karaf console, type command:

   .. code-block:: console

      feature:install odl-restconf odl-bgpcep-bmp

2. The BMP plugin contains a default configuration, which is applied after the feature starts up.
   One instance of BMP monitoring station is created (named *example-bmp-monitor*), and its presence can be verified via REST:

   **URL:** ``/restconf/config/odl-bmp-monitor-config:odl-bmp-monitors/bmp-monitor-config/example-bmp-monitor``

   **Method:** ``GET``

   **Response Body:**

   .. code-block:: xml

      <bmp-monitor-config xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor-config">
         <monitor-id>example-bmp-monitor</monitor-id>
         <server>
            <binding-port>12345</binding-port>
            <binding-address>0.0.0.0</binding-address>
         </server>
      </bmp-monitor-config>
