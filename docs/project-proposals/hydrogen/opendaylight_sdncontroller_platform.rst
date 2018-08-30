OpenDaylight SDN Controller Platform
====================================

.. figure:: oscp-proposal-image1.jpg
   :alt: oscp-proposal-image1.jpg
   :width: 700px

   oscp-proposal-image1.jpg

Description
-----------

The OpenDaylight SDN Controller Platform is the network application
platform providing unified network intelligence, enterprise-class
scalability and high availability, and a platform to deploy a wide range
of network applications, including data center network virtualization.
OSCP uses industry standard protocols, like OpenFlow, to create a common
abstraction and universal data model for the underlying network data
plane elements. When combined with open and published application
programming interfaces (APIs), OSCP offer the most flexible platform to
deploy universal, network-wide applications. Features include:

-  Topologies: Support for non-OF networks, VLAN-network tagging
-  High Availability (active/standby)
-  OpenFlow Support
-  Management features:

   -  REST API
   -  Command Line Interface (CLI)
   -  SNMP
   -  Graphical User Interface (GUI) for monitoring
   -  Statistics (CPU, RAM/Disk utilization)
   -  Controller-Switch message tracing
   -  Syslog
   -  NTP
   -  Management/Control interface separation

-  Switch Support

   -  Virtual Switches

      -  Open vSwitch (OVS)

   -  Hardware Switches

      -  Arista 7050
      -  Brocade MLXe
      -  Brocade CER
      -  Brocade CES
      -  Extreme Summit x440, x460, x670
      -  Huawei openflow-capable router platforms
      -  HP 3500, 3500yl, 5400zl, 6200yl, 6600, and 8200zl (the
         old-style L3 hardware match platform)
      -  HP V2 line cards in the 5400zl and 8200zl (the newer L2
         hardware match platform)
      -  IBM 8264
      -  Juniper (MX, EX)
      -  NEC IP8800
      -  NEC PF5240
      -  NEC PF5820
      -  NetGear 7328SO
      -  NetGear 7352SO
      -  Pronto (3290, 3295, 3780) - runs the shipping pica8 software
      -  Switch Light platform

For more information, please see `OpenDaylight SDN Controller Platform`_

Scope
-----

The scope of the OpenDaylight SDN Controller Platform includes:

-  Northbound API (REST)
-  High Availability (HA)
-  OpenFlow 1.0 Southbound Plugin
-  Host-Tracker
-  Stats Manager
-  `Command-Line Interface (CLI)`_
-  Forwarding Manager
-  Switch Manager
-  Topology Manager
-  `Network Virtualization`_

   -  overlays (tunneling) with OVS virtual switch
   -  network isolation by MAC, subnet, or Port
   -  Security: spoofing protection and ACLs
   -  virtual routing
   -  Policy:

      -  Broadcast handling – ARP, DHCP, and other broadcast traffic is
         optimized and can be broadcast, selectively unicast, or
         dropped.
      -  Membership rules – based on L1-L4 portions of the header as
         well as meta-information available to the application.

-  IaaS Cloud Orchestration Integration

   -  `OpenDaylight OpenStack Quantum Plugin`_
   -  Cloudstack

Resources Committed (developers committed to working)
-----------------------------------------------------

Committers and four additional four contributors listed below are
committed as resources for development:

Committers:

-  Rob Sherwood (rob.sherwood@bigswitch.com)
-  Rob Adams (rob.adams@bigswitch.com)
-  Mandeep Dhami (mandeep.dhami@bigswitch.com)
-  Shudong Zhou (shudong@bigswitch.com)
-  KC Wang (kc.wang@bigswitch.com)
-  Rob Veterlaus (rob.veterlaus@bigswitch.com)
-  Kanzhe Jiang (kanzhe.jiang@bigswitch.com)
-  Sumit Naiksatam (sumit.naiksatam@bigswitch.com)
-  Wilson Ng (wilson.ng@bigswitch.com)
-  Jason Parraga (jason.parraga@bigswitch.com)

Additional Contributors

-  Martin Fong (mwfong@comcast.net)
-  Andrew Ferguson (adf@cs.brown.edu)
-  Sho Shimizu (shimizu.sho@jp.fujitsu.com)

Initial Committers
------------------

-  Rob Sherwood rob.sherwood@bigswitch.com
-  Rob Adams rob.adams@bigswitch.com
-  Jason Parraga (jason.parraga@bigswitch.com)

Active Community
----------------

The core "sdnplatform" component of the project is currently supported
by almost 1000 subscribers, with over 600 messages per month to the
public mailing list. Contributions to the project have been made by
multiple various commercial and research organizations.

History of Releases
-------------------

The core "sdnplatform" component of the project has gone through three
major releases over the past 16 months, using a public, open development
and release methodology.

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

MeetsBoardPolicy(including IPR)
-------------------------------

IPR Review completed as of Wed Apr 17


.. _OpenDaylight SDN Controller Platform: OpenDaylight_SDN_Controller_Platform_(OSCP):Main
.. _Command-Line Interface (CLI): OpenDaylight_Command-Line_Interface_(CLI):Main
.. _Network Virtualization: OpenDaylight_Network_Virtualization_(ONV):Main
.. _OpenDaylight OpenStack Quantum Plugin: OpenDaylight_OpenStack_Quantum_Plugin:Main