Name
----

Atrium Router

Repo Name
---------

atrium

Description
-----------

Project Atrium is an initiative by Open Networking Foundation to develop
an open source SDN distribution - a vertically integrated set of open
source components which together form a complete SDN stack. It’s goals
are threefold:

-  Close the large integration-gap of the elements that are needed to
   build an SDN stack - while there are multiple choices at each layer,
   there are missing pieces with poor or no integration.
-  Overcome a massive gap in interoperability - This exists both at the
   switch level, where existing products from different vendors have
   limited compatibility, making it difficult to connect an arbitrary
   switch and controller; and at an API level, where its difficult to
   write a portable application across multiple controller platforms.
-  Work closely with network operators on deployable use-cases, so that
   they could download near production quality code from one location,
   and get started with functioning software defined networks on real
   hardware.

More details of Project Atrium is available
`here <https://github.com/onfsdn/atrium-docs/wiki/Overview-16A>`__

Scope
-----

This is the first release of the Open Daylight based Atrium distribution
which implements a Peering Router use case. The scope of the project
includes following

-  To implement an SDN based Peering Router solution which can peer with
   E-BGP enabled Peer Routers across different Autonomous Systems
-  Learn and Advertise Routes
-  Program the data plane switch with the route information learned from
   peers in a table layout agnostic manner
   Resolve next-hop IPs for routes received by BGP, and forward traffic based on 
   IP destination/prefix to the next hop.
-  ARP & ICMP Handling on behalf of the DP switch
-  VLAN handling for VLAN IDs assigned to switch interfaces
-  Traffic filtering based on Untagged traffic ,
   traffic with dst MAC that does not correspond to interface MAC addresses or router
   loopback interface MAC address,
   all IPv4 traffic that does not match in the FIB and is not destined to the
   Router IP addresses Multicast Traffic .
-  Agnostic about the table pipeline layout in the data plane switch.
-  Enable the user to specify the router configuration parameters such
   as (neighbors, AS etc) through REST interface.

Architecture
------------

.. figure:: Bgp_app.png
   :alt: Atrium Router: BGP Application 

   Atrium Router: BGP Application 

The stack includes a ODL controller with a BGP peering application
integrated with an instance of Quagga BGP. As with the previous release,
BGP traffic from peers is handed by Quagga. BGP is encapsulated within
OpenFlow and sent to the controller, and ODL does the encap/decap to
send it to Quagga host via a control-plane OVS. The BGP application
internally peers with Quagga using I-BGP, to retrieve the routes Quagga
learns via E-BGP communications with peers. It then used the router app
to program the dataplane FIB table by using the appropriate
switch-driver (implemented as flow objectives) that understands the
internal pipeline of the dataplane switch. The flow objectives driver
which provides data plane abstraction has implementation for an OVS
2-Table Pipeline reference driver and hardware driver support for
NoviFlow switches.

The release brings in the framework for vendors looking to develop Open
Daylight applications that are interoperable across different open flow
switch products. All the code in this Atrium distribution will be
integrated into upstream projects like DIDM in the Open Daylight
Controller post the Beryllium release that will allow the ODL community
developers to develop more applications that leverage the
interoperability elements provided by flow objectives.

The source code for Opendaylight Atrium Router is available
`here <https://github.com/onfsdn/atrium-odl>`__

Presentation covering the features of Project Atrium is available
`here <https://wiki.opendaylight.org/images/9/9d/Atrium_Project_Proposal.pptx>`__

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Subhash Singh (subhash_singh@criterionnetworks.com)
-  Jayashree Ghosh (jayasree.ghosh@wipro.com)
-  Prince Pereira (prince.pereira1@wipro.com)
-  Raaghavi Shivaguru (raaghavi.sivaguru@wipro.com)

Initial Committers
------------------

-  Subhash Singh (subhash_singh@criterionnetworks.com)
-  Harsh Awasthi (harsh.52@wipro.com)
-  Prince Pereira (prince.pereira1@wipro.com)
-  Raaghavi Shivaguru (raaghavi.sivaguru@wipro.com)
-  Manoj K Nair (manoj.krishnan@wipro.com)

Vendor Neutral
--------------

If this proposal is coming from an existing proprietary codebase, have
you ensured that all proprietary trademarks, logos, product names, etc.
have been removed? Please specify.

Meets Board Policy (including IPR)
----------------------------------
