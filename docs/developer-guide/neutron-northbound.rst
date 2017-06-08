.. _neutron-northbound-developer-guide:

Neutron Northbound
==================

How to add new API support
--------------------------

OpenStack Neutron is a moving target. It is continuously adding new
features as new rest APIs. Here is a basic step to add new API support:

In the Neutron Northbound project:

-  Add new YANG model for it under ``neutron/model/src/main/yang`` and
   ``update neutron.yang``

-  Add northbound API for it, and neutron-spi

   -  Implement ``Neutron<New API>Request.java`` and
      ``Neutron<New API>Norhtbound.java`` under
      ``neutron/northbound-api/src/main/java/org/opendaylight/neutron/northbound/api/``

   -  Implement ``INeutron<New API>CRUD.java`` and new data structure if
      any under
      ``neutron/neutron-spi/src/main/java/org/opendaylight/neutron/spi/``

   -  update
      ``neutron/neutron-spi/src/main/java/org/opendaylight/neutron/spi/NeutronCRUDInterfaces.java``
      to wire new CRUD interface

   -  Add unit tests, ``Neutron<New structure>JAXBTest.java`` under
      ``neutron/neutron-spi/src/test/java/org/opendaylight/neutron/spi/``

-  update
   ``neutron/northbound-api/src/main/java/org/opendaylight/neutron/northbound/api/NeutronNorthboundRSApplication.java``
   to wire new northbound api to ``RSApplication``

-  Add transcriber, ``Neutron<New API>Interface.java`` under
   ``transcriber/src/main/java/org/opendaylight/neutron/transcriber/``

-  update
   ``transcriber/src/main/java/org/opendaylight/neutron/transcriber/NeutronTranscriberProvider.java``
   to wire a new transcriber

   -  Add integration tests ``Neutron<New API>Tests.java`` under
      ``integration/test/src/test/java/org/opendaylight/neutron/e2etest/``

   -  update
      ``integration/test/src/test/java/org/opendaylight/neutron/e2etest/ITNeutronE2E.java``
      to run a newly added tests.

In OpenStack networking-odl

-  Add new driver (or plugin) for new API with tests.

In a southbound Neutron Provider

-  implement actual backend to realize those new API by listening
   related YANG models.

How to write transcriber
------------------------

For each Neutron data object, there is an ``Neutron*Interface`` defined
within the transcriber artifact that will write that object to the
MD-SAL configuration datastore.

All ``Neutron*Interface`` extend ``AbstractNeutronInterface``, in which
two methods are defined:

-  one takes the Neutron object as input, and will create a data object
   from it.

-  one takes an uuid as input, and will create a data object containing
   the uuid.

::

    protected abstract T toMd(S neutronObject);
    protected abstract T toMd(String uuid);

In addition the ``AbstractNeutronInterface`` class provides several
other helper methods (``addMd``, ``updateMd``, ``removeMd``), which
handle the actual writing to the configuration datastore.

The semantics of the ``toMD()`` methods
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each of the Neutron YANG models defines structures containing data.
Further each YANG-modeled structure has it own builder. A particular
``toMD()`` method instantiates an instance of the correct builder, fills
in the properties of the builder from the corresponding values of the
Neutron object and then creates the YANG-modeled structures via the
``build()`` method.

As an example, one of the ``toMD`` code for Neutron Networks is
presented below:

::

    protected Network toMd(NeutronNetwork network) {
        NetworkBuilder networkBuilder = new NetworkBuilder();
        networkBuilder.setAdminStateUp(network.getAdminStateUp());
        if (network.getNetworkName() != null) {
            networkBuilder.setName(network.getNetworkName());
        }
        if (network.getShared() != null) {
            networkBuilder.setShared(network.getShared());
        }
        if (network.getStatus() != null) {
            networkBuilder.setStatus(network.getStatus());
        }
        if (network.getSubnets() != null) {
            List<Uuid> subnets = new ArrayList<Uuid>();
            for( String subnet : network.getSubnets()) {
                subnets.add(toUuid(subnet));
            }
            networkBuilder.setSubnets(subnets);
        }
        if (network.getTenantID() != null) {
            networkBuilder.setTenantId(toUuid(network.getTenantID()));
        }
        if (network.getNetworkUUID() != null) {
            networkBuilder.setUuid(toUuid(network.getNetworkUUID()));
        } else {
            logger.warn("Attempting to write neutron network without UUID");
        }
        return networkBuilder.build();
    }

