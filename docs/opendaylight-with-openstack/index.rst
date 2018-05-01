#################################
OpenDaylight with Openstack Guide
#################################

********
Overview
********

OpenStack_ is a popular open source Infrastructure
as a service project, covering compute, storage and network management.
OpenStack can use OpenDaylight as its network management provider through the
Modular Layer 2 (ML2) north-bound plug-in. OpenDaylight manages the network
flows for the OpenStack compute nodes via the OVSDB south-bound plug-in. This
page describes how to set that up, and how to tell when everything is working.

********************
Installing OpenStack
********************

Installing OpenStack is out of scope for this document, but to get started, it
is useful to have a minimal multi-node OpenStack deployment.

The reference deployment we will use for this document is a 3 node cluster:

* One control node containing all of the management services for OpenStack_
  (Nova, Neutron, Glance, Swift, Cinder, Keystone)
* Two compute nodes running nova-compute
* Neutron using the OVS back-end and vxlan for tunnels

Once you have installed OpenStack_, verify that it is working by connecting
to Horizon and performing a few operations. To check the Neutron
configuration, create two instances on a private subnet bridging to your
public network, and verify that you can connect to them, and that they can
see each other.

***********************
Installing OpenDaylight
***********************

* :doc:`NetVirt Documentation <netvirt:index>`

.. toctree::
   :maxdepth: 1

   openstack-with-gbp
   openstack-with-gbp-vpp
   openstack-with-vtn

.. _OpenStack: https://www.openstack.org/
