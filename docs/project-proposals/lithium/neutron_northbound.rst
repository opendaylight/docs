Name
----

Neutron Northbound

Repo Name
---------

neutron

Description
-----------

The Neutron Northbound project provides an implementation of the
OpenStack Neutron APIs.

Scope
-----

The neutron northbound project is focused on the communication from the
ODL mechanism driver in Openstack to the ODL neutron service and on
methods of passing information received to multiple ODL providers. It
does not include direct manipulation of low-level network/overlay
elements - these are left to the providers that receive information from
this project

Goals
-----

The goals of this project are

| 1. To allow the ODL neutron service to evolve in tandem with the
  evolution of Neutron APIs in OpenStack.
| 2. Maintain the transparency of the current communication between
  OpenStack and OpenDaylight.
| 3. Improve on the current method of passing neutron information to
  multiple providers.
| 4. Attract more developer involvement.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Ed Warnicke
-  Flavio Fernandes
-  Sam Hague
-  Ryan Moats
-  Kyle Mestery
-  Keith Burns (alagalah@gmail.com IRC: alagalah)
-  Swaminathan Vasudevan

Initial Committers
------------------

-  Srini Seetharaman - srini.seetharaman at gmail.com - srini
-  Ryan Moats - rmoats at us.ibm.com - regXboi
-  Ed Warnicke - hagbard at gmail.com - eaw
-  Flavio Fernandes - ffernand at redhat.com - flavio

Vendor Neutral
--------------

The initial code for this project is already committed to the controller
project and will come from the following two directories:

-  features/neutron
-  opendaylight/networkconfiguration/neutron

Meets Board Policy (including IPR)
----------------------------------

As this project is spinning out of controller, the thread discussing
this proposal in controller-dev begins
`here <https://lists.opendaylight.org/pipermail/controller-dev/2015-January/008006.html>`__
and
`here <https://lists.opendaylight.org/pipermail/controller-dev/2015-January/008007.html>`__
