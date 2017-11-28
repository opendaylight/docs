OpenDaylight Version
====================

Overview
--------

This feature allows NETCONF/RESTCONF users to determine the version of
OpenDaylight they are communicating with.

Install the Version Feature
---------------------------

Follow these steps to install the version feature:

#. Navigate to the directory in which you installed OpenDaylight
#. Start Karaf::

      ./bin/karaf

#. Install Version feature::

      feature:install odl-distribution-version

.. note:: For RESTCONF access, it is recommended to install odl-restconf.

Version Feature Usage
---------------------

Example of RESTCONF request using curl from bash::

    $ curl -u 'admin:admin' localhost:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/module/odl-distribution-version:odl-version/odl-distribution-version

Example response (formatted)::

   {
    "module": [
     {
      "type": "odl-distribution-version:odl-version",
      "name": "odl-distribution-version",
      "odl-distribution-version:version": "0.5.0-SNAPSHOT"
     }
    ]
   }
