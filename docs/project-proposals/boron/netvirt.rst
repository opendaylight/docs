Name
----

NetVirt

Repo Name
---------

netvirt

Description
-----------

`Proposal Slides`_

NetVirt is a network virtualization solution.

The following diagram shows the system-level architecture of the NetVirt
project in an OpenStack-based solution.

.. figure:: NetVirtArchitecture.jpg
   :alt: NetVirtArchitecture.jpg

   NetVirtArchitecture.jpg

The NetVirt project will spin out the NetVirt functionality from the
`OVSDB NetVirt`_ project to a separate project.

NetVirt has initially been focused on supporting the OpenStack Neutron
Networking API and extensions, and is a Neutron service provider.
NetVirt will continue to support OpenStack, and may evolve to support
other northbound systems.

NetVirt currently supports the ability to control `Open vSwitch`_ (OVS)
virtual switches via OpenFlow and OVSDB, and Hardware Gateways via the
OVSDB hardware_vtep database schema. NetVirt will continue to support
OVS and hardware gateways, and may evolve to support other southbound
devices.

Reasons for Project Split
-------------------------

Because of NetVirt dependencies, the OVSDB NetVirt project has been
operating on an offset two schedule. However, OVSDB should be an offset
one project because it provides key network services to multiple
projects in addition to NetVirt, and NetVirt is better positioned as an
offset two project because it depends on OVSDB and OpenFlow, and is not
a dependency of other projects.

SFC is dependent on OVSDB, and NetVirt is dependent on SFC. Splitting
the project will allow this cycle to be broken.

Because of the above reasons, the OVSDB scope revision presented at the
`2015-10-22 TSC Meeting`_ was approved based on "a plan to split in
Boron".

Scope
-----

-  Implement a network virtualization solution.
-  Implement a northbound interface for the network virtualization
   solution.
-  Implement northbound renderers to connect NetVirt to systems such as
   OpenStack.
-  Implement southbound renderers to control network elements such as
   OVS and hardware gateways.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Alexis de Talhouët <adetalhouet@inocybe.com>
-  Andre Fredette <afredette@redhat.com>
-  Anil Vishnoi <vishnoianil@gmail.com>
-  Aswin Suryanarayanan <aswin.suryanarayanan@hp.com>
-  Daya Kamath <daya_k@yahoo.com>
-  Eric Multanen <eric.w.multanen@intel.com>
-  Gabriel Robitaille-Montpetit <grmontpetit@inocybe.com>
-  Marcelo Amaral <marcelo.amaral@bsc.es>
-  Marcus Koontz <marcus.g.koontz@intel.com>
-  Maxime Millette-Coulombe <mmcoulombe@inocybe.com>
-  Mohnish Anumala <Mohnish_Anumala@Dell.com>
-  Sam Hague <shague@redhat.com>
-  Stephen Kitt <skitt@redhat.com>
-  Vishal Thapar <vishal.thapar@ericsson.com>
-  Praveen Mala <praveen.mala@intel.com>

Initial Committers
------------------

-  Sam Hague <shague@redhat.com>
-  Anil Vishnoi <vishnoianil@gmail.com>
-  Stephen Kitt <skitt@redhat.com>
-  Vishal Thapar <vishal.thapar@ericsson.com>
-  Andre Fredette <afredette@redhat.com>

Vendor Neutral
--------------

-  Completely agnostic.
-  Built from the ground up as an open source project.
-  Diverse community of contributors.

Meets Board Policy (including IPR)
----------------------------------

The Initial code is being pulled from the OVSDB NetVirt project, which
has met board policy.

.. _Proposal Slides: https://docs.google.com/presentation/d/16c-NT19x3dbPrTjPIV5WxKcKrFfURsTLBD4D5n-pOCo/edit#slide=id.g10faa1e6d3_1_16
.. _OVSDB NetVirt: https://wiki.opendaylight.org/view/OVSDB_Integration:Main
.. _Open vSwitch: http://openvswitch.org/
.. _2015-10-22 TSC Meeting: https://meetings.opendaylight.org/opendaylight-meeting/2015/tsc/opendaylight-meeting-tsc.2015-10-22-17.00.html
