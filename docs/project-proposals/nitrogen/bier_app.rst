Name
----

BIER_APP

Repo Name
---------

bier_app

Description
-----------

BIER (Bit Indexed Explicit Replication) introduces a method for
multicast flow forwarding, without storing states in every node along
the multicast path. SDN controller should support the BIER service, to
make devices support BIER more easily and BIER network configuration
more simply. BIER service has been provided in OpenDayLight with details
shown in https://wiki.opendaylight.org/view/BIER:Main.

BIER_APP is the application plugin for the SDN controller to implement
BIER service in the northbound interface. It provides many RESTful API
to get dataes form SDN controller and send configuration information to
controller. For example, get topology form controller and show it,
distribute nodes to different domain or subdomain, configure necessary
information for node in different subdomain, create channels and deploy
it with ingress node and egress nodes, show calculated path in topology.
This app supports BIER and BIER-TE, nodes can distribute to BIER
topology and BIER-TE topology.

BIER APP architecture
'''''''''''''''''''''

.. figure:: BIER_APP_Figure.jpeg
   :alt: BIER_APP_Figure.jpeg

  BIER_APP_Figure.jpeg

  And the managers definition is as table bellow:

  +-----------------------------------+-----------------------------------+
  |  Manager Name                     | Description                       |
  +===================================+===================================+
  | Topology Manager                  | Get BIER topology from            |
  |                                   | controller, show BIER topology,   |
  |                                   | BIER domain topology and BIER-TE  |
  |                                   | domain topology..                 |
  +-----------------------------------+-----------------------------------+
  | BIER Manager                      | Configure BIER for node to        |
  |                                   | controller.                       |
  +-----------------------------------+-----------------------------------+
  | BIER TE Manager                   | Configure BIER-TE for node to     |
  |                                   | controller.                       |
  +-----------------------------------+-----------------------------------+
  | Channel Manager                   | Show channels and deploy channel  |
  |                                   | with BIER nodes or BIER-TE nodes, |
  |                                   | show calculated paths from        |
  |                                   | controller.                       |
  +-----------------------------------+-----------------------------------+
  | Netconf Manager                   | Configure Netconf for controller, |
  |                                   | Southbound protocol use NETCONF   |
  |                                   | Protocol.                         |
  +-----------------------------------+-----------------------------------+

  The BIER APP using steps:

  -  step1: Configure controller and BGP-LS.
  -  step2: Get topology from controller.
  -  step3: Configure Netconf plugin for controller.
  -  step4: Configure Domain and Subdomain.
  -  step5: Configure BIER node or BIER-TE node.
  -  step6: Configure Channel and deploy it with ingress node and egress
     nodes.

Scope
-----

The scope of this project is mostly about implementing a BIER
Application Plugin in ODL, make controller be able to implement BIER
service and generate multicast flow path manually or dynamically.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  yu.jinghai@zte.com.cn Username: yujinghai
-  xiong.quan@zte.com.cn Username: xiongquan
-  gao.chenqiang@zte.com.cn Username: gaochenqiang

Initial Committers
------------------

-  gao.chenqiang@zte.com.cn Username: gaochenqiang
-  alzverev@cisco.com Username: Alexei Zverev

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Presentation
------------

.. figure:: Presentation-bierapp-proposal-review.pdf
 :alt: Presentation-bierapp-proposal-review.pdf


