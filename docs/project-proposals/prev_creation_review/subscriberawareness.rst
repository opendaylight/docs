Name
----

Subscriber awareness

Repo Name
---------

Subscriber awareness

Description
-----------

Opendaylight is flow aware and device aware but not subscriber aware.
This project proposal is a simple framework for a database that helps
associate subscribers to services, flows and devices A couple of
examples for applications that can use subscriber awareness:

1. A wifi subscriber tracking application: wifi subscribers can be
roaming across access points. Being able to track where the subscribers
are anchored is valuable for troubleshooting and service assurance. It
can even provide a basic location service by tracking which access point
a wifi subscriber is associated with. A policy application can use a
subscriber location to apply policies based on the device the subscriber
is attached to.

2. Subscriber quality tracking: when a device fails all the subscribers
associated with it are immediately known.

The following models show how subscribers can be associated to flows,
services and devices. Note that the term subscriber is not clear – it
can mean a device or a billing entity or a person etc…we propose to name
it “service owners” but for the purpose of the project proposal the term
subscriber might be easier.

.. figure:: Subawerness.jpg
   :alt: Subawerness.jpg

   Subawerness.jpg

A couple of examples on what subscribers/devices/flows/services can be
defined :

Subscriber: can be a billed entity, device, “thing”. Device :
infrastructure device or end-user device. Its ok for subscriber ==
device. That is the case for mobile for example. Flow : unidirectional
stream of data, same as openflow Service instance : a collection of
features that make up a service, for example voice, video, list of TV
channels etc. The breakdown of service to features outside the scope of
sub awareness.

the model can be augmented if needed, but the basic concept is to define
a subscriber in a way that would be generic enough across
wireless/PON/cable/DSL and even enterprise when needed.

Note that in this proposal we only define the YANG model of a subscriber
as well as a couple of methods of how to update the model. Each
implementation can choose what triggers the creation of a subscriber and
the attachment of a service flow to a subscriber. Having said that the
goal is that the "source of the truth" should be the network state, e.g.
populating the subscriber state for a back office data base would not be
the recommended way to populated the ODL subscriber state. Instead with
either push information (by adding calls from a network device on
subscriber state changes)or pull (by doing a device database walk).

A couple of implementation notes:

- No mandate on order. No change in workflows in ODL. The subscriber
awareness module is a database.

- “Dangling pointers” are ok. Assuming eventual consistency. No tight
synchronization

- The fields can be updated by applications directly or meta data from
flows

- A subscriber is assigned a service by an application on top of the
controller

- Flows are augmented to include a subscriber identification

- DataChangeListener can be used to alert the sub awareness module when
a flow is created for a user

The plan is to keep this to a small and well-defined project. Issues
related to identity can be introduced in follow up projects.

In principal every device that has flows can use the subscriber module,
however, not all devices need to.

Scope
-----

The scope of the subscriber awareness module include:

- Bind flow to service

- Bind service to user

- Find user

- Find user by flow

- Find user by device

Resources Committed (developers committed to working)
-----------------------------------------------------

TDB

Initial Committers
------------------

Thomas Kee <t.kee@cablelabs.com>

Alon Bernstein <alonb@cisco.com>

Vendor Neutral
--------------

• No vendor package names in code • No vendor branding present in code
or output of build

Meets Board Policy (including IPR)
----------------------------------
