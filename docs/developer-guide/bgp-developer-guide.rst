.. _bgp-developer-guide:

BGP Developer Guide
===================

Overview
--------

This section provides an overview of the ``odl-bgpcep-bgp-all`` Karaf
feature. This feature will install everything needed for BGP (Border
Gateway Protocol) from establishing the connection, storing the data in
RIBs (Route Information Base) and displaying data in network-topology
overview.

BGP Architecture
----------------

Each feature represents a module in the BGPCEP codebase. The following
diagram illustrates how the features are related.

.. figure:: ./images/bgpcep/bgp-dependency-tree.png
   :alt: BGP Dependency Tree

   BGP Dependency Tree

Key APIs and Interfaces
-----------------------

BGP concepts
~~~~~~~~~~~~

This module contains the base BGP concepts contained in `RFC
4271 <http://tools.ietf.org/html/rfc4271>`__, `RFC
4760 <http://tools.ietf.org/html/rfc4760>`__, `RFC
4456 <http://tools.ietf.org/html/rfc4456>`__, `RFC
1997 <http://tools.ietf.org/html/rfc1997>`__ and `RFC
4360 <http://tools.ietf.org/html/rfc4360>`__.

All the concepts are described in one yang model:
`bgp-types.yang <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/concepts/src/main/yang/bgp-types.yang;hb=refs/heads/stable/boron>`__.

Outside generated classes, there is just one class
`NextHopUtil <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/concepts/src/main/java/org/opendaylight/bgp/concepts/NextHopUtil.java;hb=refs/heads/stable/boron>`__
that contains methods for serializing and parsing NextHop.

BGP parser
~~~~~~~~~~

Base BGP parser includes messages and attributes from `RFC
4271 <http://tools.ietf.org/html/rfc4271>`__, `RFC
4760 <http://tools.ietf.org/html/rfc4760>`__, `RFC
1997 <http://tools.ietf.org/html/rfc1997>`__ and `RFC
4360 <http://tools.ietf.org/html/rfc4360>`__.

*API* module defines BGP messages in YANG.

*IMPL* module contains actual parsers and serializers for BGP messages
and
`Activator <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/parser-impl/src/main/java/org/opendaylight/protocol/bgp/parser/impl/BGPActivator.java;hb=refs/heads/stable/boron>`__
class

*SPI* module contains helper classes needed for registering parsers into
activators

Registration
^^^^^^^^^^^^

All parsers and serializers need to be registered into the *Extension
provider*. This *Extension provider* is configured in initial
configuration of the parser-spi module (``31-bgp.xml``).

.. code:: xml

     <module>
      <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:parser:spi">prefix:bgp-extensions-impl</type>
      <name>global-bgp-extensions</name>
      <extension>
       <type xmlns:bgpspi="urn:opendaylight:params:xml:ns:yang:controller:bgp:parser:spi">bgpspi:extension</type>
       <name>base-bgp-parser</name>
      </extension>
      <extension>
       <type xmlns:bgpspi="urn:opendaylight:params:xml:ns:yang:controller:bgp:parser:spi">bgpspi:extension</type>
       <name>bgp-linkstate</name>
      </extension>
     </module>

-  *base-bgp-parser* - will register parsers and serializers implemented
   in the bgp-parser-impl module

-  *bgp-linkstate* - will register parsers and serializers implemented
   in the bgp-linkstate module

The bgp-linkstate module is a good example of a BGP parser extension.

The configuration of bgp-parser-spi specifies one implementation of
*Extension provider* that will take care of registering mentioned parser
extensions:
`SimpleBGPExtensionProviderContext <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/parser-spi/src/main/java/org/opendaylight/protocol/bgp/parser/spi/pojo/SimpleBGPExtensionProviderContext.java;hb=refs/heads/stable/boron>`__.
All registries are implemented in package
`bgp-parser-spi <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=tree;f=bgp/parser-spi/src/main/java/org/opendaylight/protocol/bgp/parser/spi;hb=refs/heads/stable/boron>`__.

Serializing
^^^^^^^^^^^

The serializing of BGP elements is mostly done in the same way as in
`PCEP <#_pcep_developer_guide>`__, the only exception is the
serialization of path attributes, which is described here. Path
attributes are different from any other BGP element, as path attributes
don’t implement one common interface, but this interface contains
getters for individual path attributes (this structure is because update
message can contain exactly one instance of each path attribute). This
means, that a given *PathAttributes* object, you can only get to the
specific type of the path attribute through checking its presence.
Therefore method *serialize()* in *AttributeRegistry*, won’t look up the
registered class, instead it will go through the registrations and offer
this object to the each registered parser. This way the object will be
passed also to serializers unknown to module bgp-parser, for example to
LinkstateAttributeParser. RFC 4271 recommends ordering path attributes,
hence the serializers are ordered in a list as they are registered in
the *Activator*. In other words, this is the only case, where
registration ordering matters.

.. figure:: ./images/bgpcep/PathAttributesSerialization.png
   :alt: PathAttributesSerialization

   PathAttributesSerialization

*serialize()* method in each Path Attribute parser contains check for
presence of its attribute in the PathAttributes object, which simply
returns, if the attribute is not there:

.. code:: java

     if (pathAttributes.getAtomicAggregate() == null) {
         return;
     }
     //continue with serialization of Atomic Aggregate

BGP RIB
-------

The BGP RIB module can be divided into two parts:

-  BGP listener and speaker session handling

-  RIB handling.

Session handling
~~~~~~~~~~~~~~~~

``31-bgp.xml`` defines only bgp-dispatcher and the parser it should be
using (global-bgp-extensions).

.. code:: xml

    <module>
     <type>prefix:bgp-dispatcher-impl</type>
     <name>global-bgp-dispatcher</name>
     <bgp-extensions>
      <type>bgpspi:extensions</type>
      <name>global-bgp-extensions</name>
     </bgp-extensions>
     <boss-group>
      <type>netty:netty-threadgroup</type>
      <name>global-boss-group</name>
     </boss-group>
     <worker-group>
      <type>netty:netty-threadgroup</type>
      <name>global-worker-group</name>
     </worker-group>
    </module>

For user configuration of BGP, check User Guide.

Synchronization
~~~~~~~~~~~~~~~

Synchronization is a phase, where upon connection, a BGP speaker sends
all available data about topology to its new client. After the whole
topology has been advertised, the synchronization is over. For the
listener, the synchronization is over when the RIB receives End-of-RIB
(EOR) messages. There is a special EOR message for each AFI (Address
Family Identifier).

-  IPv4 EOR is an empty Update message.

-  Ipv6 EOR is an Update message with empty MP\_UNREACH attribute where
   AFI and SAFI (Subsequent Address Family Identifier) are set to Ipv6.
   OpenDaylight also supports EOR for IPv4 in this format.

-  Linkstate EOR is an Update message with empty MP\_UNREACH attribute
   where AFI and SAFI are set to Linkstate.

For BGP connections, where both peers support graceful restart, the EORs
are sent by the BGP speaker and are redirected to RIB, where the
specific AFI/SAFI table is set to *true*. Without graceful restart, the
messages are generated by OpenDaylight itself and sent after second
keepalive for each AFI/SAFI. This is done in
`BGPSynchronization <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/BGPSynchronization.java;hb=refs/heads/stable/boron>`__.

**Peers**

`BGPPeer <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/BGPPeer.java;hb=refs/heads/stable/boron>`__
has various meanings. If you configure BGP listener, *BGPPeer*
represents the BGP listener itself. If you are configuring BGP speaker,
you need to provide a list of peers, that are allowed to connect to this
speaker. Unknown peer represents, in this case, a peer that is allowed
to be refused. *BGPPeer* represents in this case peer, that is supposed
to connect to your speaker. *BGPPeer* is stored in
`BGPPeerRegistry <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/StrictBGPPeerRegistry.java;hb=refs/heads/stable/boron>`__.
This registry controls the number of sessions. Our strict implementation
limits sessions to one per peer.

`ApplicationPeer <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/ApplicationPeer.java;hb=refs/heads/stable/boron>`__
is a special case of peer, that has it’s own RIB. This RIB is populated
from RESTCONF. The RIB is synchronized with default BGP RIB. Incoming
routes to the default RIB are treated in the same way as they were from
a BGP peer (speaker or listener) in the network.

RIB handling
~~~~~~~~~~~~

RIB (Route Information Base) is defined as a concept in `RFC
4271 <http://tools.ietf.org/html/rfc4271#section-3.2>`__. RFC does not
define how it should be implemented. In our implementation, the routes
are stored in the MD-SAL datastore. There are four supported routes -
*Ipv4Routes*, *Ipv6Routes*, *LinkstateRoutes* and *FlowspecRoutes*.

Each route type needs to provide a
`RIBSupport.java <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-spi/src/main/java/org/opendaylight/protocol/bgp/rib/spi/RIBSupport.java;hb=refs/heads/stable/boron>`__
implementation. *RIBSupport* tells RIB how to parse binding-aware data
(BGP Update message) to binding-independent (datastore format).

Following picture describes the data flow from BGP message that is sent
to *BGPPeer* to datastore and various types of RIB.

.. figure:: ./images/bgpcep/RIB.png
   :alt: RIB

   RIB

`AdjRibInWriter <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/AdjRibInWriter.java;hb=refs/heads/stable/boron>`__
- represents the first step in putting data to datastore. This writer is
notified whenever a peer receives an Update message. The message is
transformed into binding-independent format and pushed into datastore to
*adj-rib-in*. This RIB is associated with a peer.

`EffectiveRibInWriter <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/EffectiveRibInWriter.java;hb=refs/heads/stable/boron>`__
- this writer is notified whenever *adj-rib-in* is updated. It applies
all configured import policies to the routes and stores them in
*effective-rib-in*. This RIB is also associated with a peer.

`LocRibWriter <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/LocRibWriter.java;hb=refs/heads/stable/boron>`__
- this writer is notified whenever **any** *effective-rib-in* is updated
(in any peer). Performs best path selection filtering and stores the
routes in *loc-rib*. It also determines which routes need to be
advertised and fills in *adj-rib-out* that is per peer as well.

`AdjRibOutListener <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/rib-impl/src/main/java/org/opendaylight/protocol/bgp/rib/impl/AdjRibOutListener.java;h=a14fd54a29ea613b381a36248f67491d968963b8;hb=refs/heads/stable/boron>`__
- listens for changes in *adj-rib-out*, transforms the routes into
BGPUpdate messages and sends them to its associated peer.

BGP inet
--------

This module contains only one YANG model
`bgp-inet.yang <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/inet/src/main/yang/bgp-inet.yang;hb=refs/heads/stable/boron>`__
that summarizes the ipv4 and ipv6 extensions to RIB routes and BGP
messages.

BGP flowspec
------------

BGP flowspec is a module that implements `RFC
5575 <http://tools.ietf.org/html/rfc5575>`__ for IPv4 AFI and
`draft-ietf-idr-flow-spec-v6-06 <https://tools.ietf.org/html/draft-ietf-idr-flow-spec-v6-06>`__
for IPv6 AFI. The RFC defines an extension to BGP in form of a new
subsequent address family, NLRI and extended communities. All of those
are defined in the
`bgp-flowspec.yang <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/flowspec/src/main/yang/bgp-flowspec.yang;hb=refs/heads/stable/boron>`__
model. In addition to generated sources, the module contains parsers for
newly defined elements and RIBSupport for flowspec-routes. The route key
of flowspec routes is a string representing human-readable flowspec
request.

BGP linkstate
-------------

BGP linkstate is a module that implements
`draft-ietf-idr-ls-distribution <http://tools.ietf.org/html/draft-ietf-idr-ls-distribution-04>`__
version 04. The draft defines an extension to BGP in form of a new
address family, subsequent address family, NLRI and path attribute. All
of those are defined in the
`bgp-linkstate.yang <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/linkstate/src/main/yang/bgp-linkstate.yang;hb=refs/heads/stable/boron>`__
model. In addition to generated sources, the module contains
`LinkstateAttributeParser <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/linkstate/src/main/java/org/opendaylight/protocol/bgp/linkstate/attribute/LinkstateAttributeParser.java;hb=refs/heads/stable/boron>`__,
`LinkstateNlriParser <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=bgp/linkstate/src/main/java/org/opendaylight/protocol/bgp/linkstate/nlri/LinkstateNlriParser.java;hb=refs/heads/stable/boron>`__,
activators for both, parser and RIB, and RIBSupport handler for
linkstate address family. As each route needs a key, in case of
linkstate, the route key is defined as a binary string, containing all
the NLRI serialized to byte format. The BGP linkstate extension also
supports distribution of MPLS TE state as defined in
`draft-ietf-idr-te-lsp-distribution-03 <https://tools.ietf.org/html/draft-ietf-idr-te-lsp-distribution-03>`__,
extension for Segment Routing
`draft-gredler-idr-bgp-ls-segment-routing-ext-00 <https://tools.ietf.org/html/draft-gredler-idr-bgp-ls-segment-routing-ext-00>`__
and Segment Routing Egress Peer Engineering
`draft-ietf-idr-bgpls-segment-routing-epe-02 <https://tools.ietf.org/html/draft-ietf-idr-bgpls-segment-routing-epe-02>`__.

BGP labeled-unicast
-------------------

BGP labeled unicast is a module that implements `RFC
3107 <https://tools.ietf.org/html/rfc3107>`__. The RFC defines an
extension to the BGP MP to carry Label Mapping Information as a part of
the NLRI. The AFI indicates, as usual, the address family of the
associated route. The fact that the NLRI contains a label is indicated
by using SAFI value 4. All of those are defined in
`bgp-labeled-unicast.yang <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob_plain;f=bgp/labeled-unicast/src/main/yang/bgp-labeled-unicast.yang;hb=refs/heads/stable/boron>`__
model. In addition to the generated sources, the module contains new
NLRI codec and RIBSupport. The route key is defined as a binary, where
whole NLRI information is encoded.

BGP topology provider
---------------------

BGP data besides RIB, is stored in network-topology view. The format of
how the data is displayed there conforms to
`draft-clemm-netmod-yang-network-topo <https://tools.ietf.org/html/draft-clemm-netmod-yang-network-topo-01>`__.

API Reference Documentation
---------------------------

Javadocs are generated while creating mvn:site and they are located in
target/ directory in each module.
