Open vSwitch Database Management Protocol (OVSDB) and Network
Virtualization (NetVirt) Solution
=============================================================

Repo Name
---------

`OVSDB Repo`_

OVSDB Project Description
-------------------------

The OVSDB NetVirt project comprises two major pieces of functionality:

#. The OVSDB Southbound Protocol, and
#. NetVirt, a network virtualization solution.

The following diagram shows the system-level architecture of OVSDB
NetVirt in an OpenStack-based solution.

.. figure:: OVSDBNetVirt.png
   :alt: OVSDBNetVirt.png

   OVSDBNetVirt.png

NetVirt is a network virtualization solution. NetVirt is initially
focused on supporting the OpenStack Neutron Networking API and
extensions, and is a Neutron service provider.

The OVSDB component implements the OVSDB protocol (`RFC 7047`_), as well
as plugins to support OVSDB Schemas, such as the `Open_vSwitch database
schema`_ and the `hardware_vtep database schema`_, as required.

NetVirt has MDSAL-based interfaces with Neutron on the northbound side,
and OVSDB and OpenFlow plugins on the southbound side.

The initial goal for OVSDB NetVirt is to control `Open vSwitch`_ virtual
switches via OpenFlow and OVSDB. Follow-on goals for Netvirt include
control of other OpenFlow and OVSDB-based devices such as Layer 2
gateways.

Scope
-----

-  Implement a network virtualization solution including northbound
   interfaces to drive the application and southbound plugins to drive
   network elements.

-  Implement a Neutron Provider

-  Implement the OVSDB Southbound Protocol with plugins for relevant
   OVSDB schemas including the Open_vSwitch database schema and the
   hardware_vtep database schema as required by OpenDaylight
   applications.

Project Info
------------

-  Main Project Page:
   https://wiki.opendaylight.org/view/OVSDB_Integration:Main

-  Project Trello Boards: https://trello.com/odlovsdb

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Alexis de Talhouët <adetalhouet@inocybe.com>
-  Andre Fredette <afredette@redhat.com>
-  Anil Vishnoi <vishnoianil@gmail.com>
-  Aswin Suryanarayanan <aswin.suryanarayanan@hp.com>
-  Daya Kamath <daya_k@yahoo.com>
-  Eric Multanen <eric.w.multanen@intel.com>
-  Flavio Fernandes <ffernand@redhat.com>
-  Gabriel Robitaille-Montpetit <grmontpetit@inocybe.com>
-  Marcelo Amaral <marcelo.amaral@bsc.es>
-  Marcus Koontz <marcus.g.koontz@intel.com>
-  Maxime Millette-Coulombe <mmcoulombe@inocybe.com>
-  Mohnish Anumala <Mohnish_Anumala@Dell.com>
-  Sam Hague <shague@redhat.com>
-  Stephen Kitt <skitt@redhat.com>
-  Vishal Thapar <vishal.thapar@ericsson.com>

Committers
----------

-  Anil Vishnoi <vishnoianil@gmail.com>
-  Aswin Nair <aswinnair@gmail.com>
-  Brent Salisbury <brent.salisbury@gmail.com>
-  Flavio Fernandes <ffernand@redhat.com>
-  Sam Hague <shague86@gmail.com>

Vendor Neutral
--------------

-  Completely agnostic.
-  Built from the ground up as an open source project.
-  Diverse community of contributors.

Meets Board Policy (including IPR)
----------------------------------

No Inbound Code Review required for this project. No substantial
contribution of 3rd party code is present {Phil Robb: 07-18-13}

.. _OVSDB Repo: https://git.opendaylight.org/gerrit/p/ovsdb.git
.. _RFC 7047: https://tools.ietf.org/html/rfc7047
.. _Open_vSwitch database schema: http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf
.. _hardware_vtep database schema: http://openvswitch.org/docs/vtep.5.pdf
.. _Open vSwitch: http://openvswitch.org/