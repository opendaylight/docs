OpenStack with GroupBasedPolicy
===============================

This section is for Application Developers and Network Administrators
who are looking to integrate Group Based Policy with OpenStack.

To enable the **GBP** Neutron Mapper feature, at the karaf console:

.. code-block:: bash

    feature:install odl-groupbasedpolicy-neutronmapper

Neutron Mapper has the following dependencies that are automatically loaded:

.. code-block:: bash

    odl-neutron-service

Neutron Northbound implementing REST API used by OpenStack

.. code-block:: bash

    odl-groupbasedpolicy-base

Base **GBP** feature set, such as policy resolution, data model etc.

.. code-block:: bash

    odl-groupbasedpolicy-ofoverlay

For Lithium, **GBP** has one renderer, hence this is loaded by default.

REST calls from OpenStack Neutron are by the Neutron NorthBound project.

**GBP** provides the implementation of the `Neutron V2.0 API <neutron_v2api_>`_.

Features
--------

List of supported Neutron entities:

* Port
* Network

  * Standard Internal
  * External provider L2/L3 network

* Subnet
* Security-groups
* Routers

  * Distributed functionality with local routing per compute
  * External gateway access per compute node (dedicated port required)
  * Multiple routers per tenant

* FloatingIP NAT
* IPv4/IPv6 support

The mapping of Neutron entities to **GBP** entities is as follows:

**Neutron Port**

.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-port.png

   Neutron Port

The Neutron port is mapped to an endpoint.

The current implementation supports one IP address per Neutron port.

An endpoint and L3-endpoint belong to multiple EndpointGroups if the Neutron
port is in multiple Neutron Security Groups.

The key for endpoint is L2-bridge-domain obtained as the parent of
L2-flood-domain representing Neutron network. The MAC address is from the
Neutron port.
An L3-endpoint is created based on L3-context (the parent of the
L2-bridge-domain) and IP address of Neutron Port.

**Neutron Network**

.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-network.png

   Neutron Network

A Neutron network has the following characteristics:

* defines a broadcast domain
* defines a L2 transmission domain
* defines a L2 name space.

To represent this, a Neutron Network is mapped to multiple **GBP** entities.
The first mapping is to an L2 flood-domain to reflect that the Neutron network
is one flooding or broadcast domain.
An L2-bridge-domain is then associated as the parent of L2 flood-domain. This
reflects both the L2 transmission domain as well as the L2 addressing namespace.

The third mapping is to L3-context, which represents the distinct L3 address space.
The L3-context is the parent of L2-bridge-domain.

**Neutron Subnet**


.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-subnet.png

   Neutron Subnet

Neutron subnet is associated with a Neutron network. The Neutron subnet is
mapped to a *GBP* subnet where the parent of the subnet is L2-flood-domain
representing the Neutron network.

**Neutron Security Group**


.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-securitygroup.png

   Neutron Security Group and Rules

**GBP** entity representing Neutron security-group is EndpointGroup.

**Infrastructure EndpointGroups**

Neutron-mapper automatically creates EndpointGroups to manage key infrastructure
items such as:

* DHCP EndpointGroup - contains endpoints representing Neutron DHCP ports
* Router EndpointGroup - contains endpoints representing Neutron router
  interfaces
* External EndpointGroup - holds L3-endpoints representing Neutron router
  gateway ports, also associated with FloatingIP ports.

**Neutron Security Group Rules**

This mapping is most complicated among all others because Neutron
security-group-rules are mapped to contracts with clauses,
subjects, rules, action-refs, classifier-refs, etc.
Contracts are used between endpoint groups representing Neutron Security Groups.
For simplification it is important to note that Neutron security-group-rules are
similar to a **GBP** rule containing:

* classifier with direction
* action of *allow*.


**Neutron Routers**


.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-router.png

   Neutron Router

Neutron router is represented as a L3-context. This treats a router as a Layer3
namespace, and hence every network attached to it a part
of that Layer3 namespace.

This allows for multiple routers per tenant with complete isolation.

The mapping of the router to an endpoint represents the router's interface or
gateway port.

The mapping to an EndpointGroup represents the internal infrastructure
EndpointGroups created by the **GBP** Neutron Mapper

When a Neutron router interface is attached to a network/subnet, that
network/subnet and its associated endpoints or Neutron Ports are seamlessly
added to the namespace.

**Neutron FloatingIP**

When associated with a Neutron Port, this leverages the *GBP* OfOverlay
renderer's NAT capabilities.

A dedicated *external* interface on each Nova compute host allows for
disitributed external access. Each Nova instance associated with a
FloatingIP address can access the external network directly without having to
route via the Neutron controller, or having to enable any form
of Neutron distributed routing functionality.

Assuming the gateway provisioned in the Neutron Subnet command for the external
network is reachable, the combination of *GBP* Neutron Mapper and
OfOverlay renderer will automatically ARP for this default gateway, requiring
no user intervention.


**Troubleshooting within GBP**

Logging level for the mapping functionality can be set for package
org.opendaylight.groupbasedpolicy.neutron.mapper. An example of enabling TRACE
logging level on karaf console:

.. code-block:: bash

    log:set TRACE org.opendaylight.groupbasedpolicy.neutron.mapper

**Neutron mapping example**

As an example for mapping can be used creation of Neutron network, subnet and
port. When a Neutron network is created 3 **GBP** entities are created:
l2-flood-domain, l2-bridge-domain, l3-context.

.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-network-example.png

   Neutron network mapping

After an subnet is created in the network mapping looks like this.

.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-subnet-example.png

   Neutron subnet mapping

If an Neutron port is created in the subnet an endpoint and l3-endpoint are
created. The endpoint has key composed from l2-bridge-domain and MAC address
from Neutron port. A key of l3-endpoint is compesed from l3-context and IP
address. The network containment of endpoint and l3-endpoint points to the
subnet.


.. figure:: images/groupbasedpolicy/neutronmapper-gbp-mapping-port-example.png

   Neutron port mapping

Configuring GBP Neutron
-----------------------

No intervention passed initial OpenStack setup is required by the user.

More information about configuration can be found in our DevStack demo
environment on the `GBP wiki <gbp_wiki_>`_.

Administering or Managing GBP Neutron
-------------------------------------

For consistencies sake, all provisioning should be performed via the Neutron API. (CLI or Horizon).

The mapped policies can be augmented via the **GBP** UX,UX, to:

* Enable Service Function Chaining
* Add endpoints from outside of Neutron i.e. VMs/containers not provisioned in OpenStack
* Augment policies/contracts derived from Security Group Rules
* Overlay additional contracts or groupings

Tutorials
---------

A DevStack demo environment can be found on the
`GBP wiki <gbp_wiki_>`_.

.. _gbp_wiki: https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)
.. _neutron_v2api: http://developer.openstack.org/api-ref-networking-v2.html
