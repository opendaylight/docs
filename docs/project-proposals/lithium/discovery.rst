Name
----

Discovery

Repo Name
---------

discovery

Description
-----------

For network elements that support the OpenFlow protocol, the existing
“discovery” mechanism in OpenDaylight suffices. However, there are many
network elements that do not support the OpenFlow protocol and are left
to their own to figure out how to become part of the OpenDaylight
management domain. This Discovery project creates the generic
infrastructure to support the discovery, identification, and
synchronization of network elements with the controller as well as
provides a framework for link or connection reconciliation between the
network elements. For the context of this proposal the following
definitions hold:

| ``* Identification - determination of network element type, i.e. device type and verification of connectivity to device``
| ``* Synchronization - collection of network element configuration (inventory) from the network element``
| ``* Reconciliation - resolving connectivity (links) between network elements based on available, partial (due to the “remote” end being foreign) or complete, link information``

Scope
-----

This proposal does not include the algorithms to find new network
elements, such as a ping sweep, subnet scans, etc.; It is assumed that
finding the "address" of new devices is the responsibility of other
modules. This proposal will interact with the existing topology and
inventory modules as network elements and links are discovered. This
proposal supports and uses the existing inventory and topology models
and does not replace them.

The purpose of this proposal is only to provide a framework that can be
used to inform the controller of new devices to be "controlled",
identify the type of the device (essentially identify a module that
supports it), and synchronize the device model into existing inventory /
topology models as well as collect any information needed for the
specific support module.

Where appropriate, this project will work with and consult existing
device / protocol teams to help ensure the framework meets the needs of
the community as opposed to any specific vendor's devices.

Discovery Flow
--------------

The diagram below shows the component interactions associated with
discovery.

.. figure:: Discovery-flow.png
   :alt: Discovery-flow.png

   Discovery-flow.png

Another perspective of the component interactions are in the following
slides:

.. figure:: DiscoveryProposal.pptx
   :alt: Slides presented to the TSC

   Slides presented to the TSC

Distribution Support
--------------------

If there are multiple synchronization handlers in a deployment only a
single instance should handle the synchronization of a given device. In
the long term it would be a preference that the notification system
supports a 1 of N based delivery system with filtering/matching
capabilities and guaranteed delivery. Until such time, pre-configured
sharding based on the IP of the NE being synchronized will be utilized.
This will be managed via configuration to the synchronization instances.

High Availability Support
-------------------------

To support HA, each synchronization instance can be configured with an
IP shared for which it is back up. When an instance receives the
notification that a NE needs synchronization for which the instance is a
backup, it will hold that information for a configured amount of time
(time out). If it does not received a message that this NE has been
synchronized within that time period it will initiate its own
synchronization. This is an imperfect system and can lead to dual
synchronizations, but it avoids a synchronous lock between instances
with low risk. Eventually this should be replaced with message routing
and guaranteed delivery based on the changes to the notification system.

Resources Committed (developers committed to working)
-----------------------------------------------------

David Bainbridge (dbainbri@ciena.com)

Paul Hudgins (phudgins@ciena.com)

Rahul Sharma (rahushar@ciena.com)

Initial Committers
------------------

Bainbridge, David (dbainbri@ciena.com)

Hudgins, Paul (phudgins@ciena.com)

Sharma, Rahul (rahushar@ciena.com)

Dean, Steve <sdean@hp.com>

Chau, Uyen <uyen.chau@hp.com>

Vendor Neutral
--------------

This code base contains only the standard ODL copyright notice as it was
started with the idea of eventually moving it to open source.

Meets Board Policy (including IPR)
----------------------------------

Inbound Code Scan performed on 9/25/2014 and no issues were found. [pjr]
