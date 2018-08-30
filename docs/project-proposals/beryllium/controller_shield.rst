Name
----

Unified Controller Security plugin

Repo Name
---------

USecplugin

Description
-----------

The SDN controller is identified as the single most important point of
failure that can affect the entire network. Hence, securing the
controller from external sources of attack is of paramount importance.
The attack on the controller could be from the application, network or
the peer controllers that are connected via the east-west interface.
While the controller may be protected from the network by adding
additional layers of security before the packets can reach the
controller, the rationale behind a unified controller security plugin is
to devise an security information repository for the NB applications
that may be designed to protect the controller from external security
threats.The Unified Security Plugin (USecPlugin) is developed for ODL
controller as an infra that provides a single pane of visibility related
to controller security and expose the same to third party, north-bound
applications. The security information could be for various purposes
such as collating source of different attacks reported in SB plugins /
suspected controller intrusions or information about trusted controllers
in the network. Information collected at the plugin may also be used to
configure Firewalls and create IP Blacklists for the network.

Following figure depicts the overview of Controller attack surfaces that
needs protection: `500px \|none`_

|
| Following Use-Cases have been presently identified for the USecPlugin:

1. Security from Network Elements - This covers security for the
controller from DDoS attacks originating from Switches/Hosts in the
network. The information about the attributes of the packet contributing
to the attack may be updated in the USecPlugin to correlate information
about perpetrators of the attack.

2. East-West Interface Security - East-West connectivity between
unauthenticated can potentially expose a lot of network critical
information and data with rouge controller and its network. Information
about type of connection with peer controller is essential to determine
whether connectivity should be established with the peer or not.

Following figure depicts the high-level architecture of the proposition:
`500px \|none <File:Shield_Architecture1.jpg>`__

The description of the architecture is as follows:

In the present scope of work, we focus on a couple of areas of
controller protection, as detailed below:

1. Openflow Plugin needs to protect itself from Packet-In Attacks. As a
protection mechanism, the plugin has an overload protection mechanism to
protect itself from the network. However, the present architecture
thwarts the attacks to prevent the over-whelming of the the OF-Plugin.
The idea of the proposed implementation is to introduce a security
plugin to identify the switch/port that may be initiating an attack,
thereby providing an infra to mitigate the same. Statistical collection
of counters on per switch / port basis of the incoming packet-in
messages by the USecPlugin opens the possibility of DoS attack
detection. This will allow any third-party application to query the
USecPlugin to get the statistical data regarding Packet-In messages and
formulate the logic to isolate the network element(s) suspected of being
perpetrators of the attack. The statistical information collected for
Packet-In attack detection is proposed to be fed to an analytics based
engine in the USecPlugin future releases to make attack detection more
robust and hardened.

2. For East-West interface protection - Peer controllers need to be
Authenticated before establishment of an east-west connectivity. Once
the peer controllers are authenticated, the Unified-Security plugin
database needs to be updated. The entry of the peer controller in the
authenticated list of controllers will be deterministic before an
application like SDNi establishes a session with a peer controller. Also
peer interaction between controllers should be on a secure encrypted
interface and checked for message integrity verification. Type of
connection details needs to be updated in the USecPlugin for
application(s) making use of the east-west interface is/are informed
about the authenticity of the peer and type of security that is provided
on the communicating interface.

Scope
-----

The project is divided into two phases:

**Phase-1 (Contribution in Be Release):**

Creation of a Master-Security plugin which will be a repository of
information pertaining to different security aspects of the network. In
the first phase of its design, it will be fetching Packet-In message
contents from the Data-Store and creating statistical information base
like the rate of packets per second received at each node/port
combination, calculation of historical average of pps for each node/port
combination, extracting the Source IP Address information from the
packet payload in case of anomalous behavior detection and storing the
same in the database. This will provide an infrastructure for any
third-part application that may want to utilize such information to
mitigate attacks.


**Phase-2 (Contribution in Boron Release):**

The modification as part of Phase-2 would be to make changes in the ODL
Controller to update the USecPlugin about the type of connection
(Authenticated or Un-Authentication) established with peer controller.
Also, information about whether the east-west interface with peer is a
secure, encrypted interface needs to be updated in the USecPlugin and
same information has to be exposed to NB applications.

Resources Committed (developers committed to working)
-----------------------------------------------------

Thomas Lee Sebastian (thomaslee.s@tcs.com) [gerrit id: thomaslees]

Rafat Jahan (rafat.jahan@tcs.com)

Deepika Gupta gupta.deepika1@tcs.com

Initial Committers
------------------

Thomas Lee Sebastian (thomaslee.s@tcs.com) [gerrit id: thomaslees]

Rafat Jahan (rafat.jahan@tcs.com)

Deepika Gupta (gupta.deepika1@tcs.com)

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Meets Board Policy (including IPR)
----------------------------------

New Project. No Inbound Code Review required

See also
--------

-  `Controller Shield:Main`_
-  `Controller Shield: Beryllium Release Plan`_
-  |Controller_Shield.pdf|
-  `Controller Shield: Boron Release Plan`_

.. _`Controller Shield:Main`: Controller_Shield:Main
.. _`Controller Shield: Beryllium Release Plan`: Controller_Shield:_Beryllium_Release_Plan
.. _`Controller Shield: Boron Release Plan`: Controller_Shield:_Boron_Release_Plan

.. |Controller_Shield.pdf| image:: Controller_Shield.pdf

.. _500px \|none: File:ControllerShield.png
