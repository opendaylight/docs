OVSDB OpenStack Installation Guide
==================================

Overview
^^^^^^^^

This guide is geared towards installing OpenDaylight to use the OVSDB project to provide Neutron support for OpenStack.

Open vSwitch (OVS) is generally accepted as the unofficial standard for Virtual Switching in the Open hypervisor based solutions.
For information on OVS, see `Open vSwitch <http://openvswitch.org/>`_.

With OpenStack within the SDN context, controllers and applications interact using two channels: OpenFlow and OVSDB. OpenFlow addresses the forwarding-side of the OVS functionality. OVSDB, on the other hand, addresses the management-plane.
A simple and concise overview of Open Virtual Switch Database (OVSDB) is available at: http://networkstatic.net/getting-started-ovsdb/

Preparing for Installation
--------------------------

Follow the instructions in :ref:`install_odl`.

Installing OVSDB OpenStack
--------------------------

Install the required features with the following command::

   feature:install odl-ovsdb-openstack

Sample output from the Karaf console
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: shell

   opendaylight-user@root>feature:list -i | grep ovsdb
   odl-ovsdb-southbound-api             | 1.1.0-SNAPSHOT   | x         | odl-ovsdb-southbound-1.1.0-SNAPSHOT
   OpenDaylight :: southbound :: api
   odl-ovsdb-southbound-impl            | 1.1.0-SNAPSHOT   | x         | odl-ovsdb-southbound-1.1.0-SNAPSHOT
   OpenDaylight :: southbound :: impl
   odl-ovsdb-southbound-impl-rest       | 1.1.0-SNAPSHOT   | x         | odl-ovsdb-southbound-1.1.0-SNAPSHOT
   OpenDaylight :: southbound :: impl :: REST
   odl-ovsdb-southbound-impl-ui         | 1.1.0-SNAPSHOT   | x         | odl-ovsdb-southbound-1.1.0-SNAPSHOT
   OpenDaylight :: southbound :: impl :: UI
   odl-ovsdb-openstack                  | 1.1.0-SNAPSHOT   | x         | ovsdb-1.1.0-SNAPSHOT
   OpenDaylight :: OVSDB :: OpenStack Network Virtual

Verifying your Installation
---------------------------

To verify that the installation was successful, use the following command in karaf and check that there are no errors
logs relating to odl-ovsdb-openstack::

   log:display

Troubleshooting
^^^^^^^^^^^^^^^

There is no easy way to troubleshoot an installation of odl-ovsdb-openstack. Perhaps a combination of
log:display | grep -i ovsdb in karaf, Open vSwitch commands (ovs-vsctl) and OpenStack logs will be useful but will not
explain everything.

Uninstalling OVSDB OpenStack
----------------------------

#. Shutdown the karaf instance::

      system:shutdown

#. Remove what is in the ``/data`` folder of the OpenDaylight distribution.
