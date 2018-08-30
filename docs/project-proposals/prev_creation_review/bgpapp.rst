Name
----

BGPapp

Repo Name
---------

bgpapp

Description
-----------

BGPapp is an application running on top of the OpenDaylight controller.
The idea behind BGPapp is to provide to the operator a simple
user-interface for visualizing and managing BGP-supported network
functions.

BGP supports a reliable (TCP), secure and scalable transport for
conveying information between routers and systems based on configured
policies. Examples include but are not limited to IPv4 and IPv6
prefixes, VPN routes and flowspecs. BGP Link-State (BGP-LS) is a recent
extension to BGP enabling a router (running OSPF or ISIS) to convey a
copy of a link-state database to an upstream application. The advent of
the BGP Monitoring Protocol (BMP) provides solution gathering and
analyzing BGP behavior on peering routers.

BGPapp is an application employing the DLUX UI framework. It will
leverage current OpenDaylight BGP functions including but not limited to
BGP-LS, BGP IPv4, BGP IPv6, BGP flowspec and BMP. Functions included in
BGPapp are:

-  Visualization of BGP network topologies

-  Presentation of BGP routing information

-  Dialogs for deploying and configuring BGP information in the network
   with flowspec being one example

BGP has been widely deployed through the years and enhanced to offer a
multitude of different functions and services. BGPapp will compliment
the extensive BGP support in OpenDaylight with a simple, user-interface
for seeing and managing BGP networks.

Scope
-----

BGPapp is an application implemented in the DLUX UI. It will communicate
with the OpenDaylight controller across current and future model-driven
RESTCONF APIs.

Potential changes needed in OpenDaylight to support BGPapp are:

-  updates to BGP-related YANG models that in turn yield new RESTCONF
   APIs

-  data storage sufficient to hold O(# of global IPv4 and IPv6 prefixes)

Resources Committed (developers committed to working)
-----------------------------------------------------

TBD

Initial Committers
------------------

Chris Metz, chmetz@cisco.com

Giles Heron, giheron@cisco.com

Bimal Grewal, bigrewal@cisco.com

Vendor Neutral
--------------

Meets Board Policy (including IPR)
----------------------------------
