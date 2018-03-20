.. _bgp-user-guide-config-concepts:

Basic Configuration & Concepts
==============================
The following section shows how to configure BGP basics, how to verify functionality and presents essential components of the plugin.
Next samples demonstrate the plugin's runtime configuration capability.
It shows the way to configure the plugin via REST, using standardized OpenConfig BGP APIs.

.. contents:: Contents
   :depth: 2
   :local:

BGP RIB API
^^^^^^^^^^^
This tree illustrates the BGP RIBs organization in datastore.

.. code-block:: console

    bgp-rib
      +--ro rib* [id]
         +--ro id         rib-id
         +--ro peer* [peer-id]
         |  +--ro peer-id                  peer-id
         |  +--ro peer-role                peer-role
         |  +--ro simple-routing-policy?   simple-routing-policy
         |  +--ro supported-tables* [afi safi]
         |  |  +--ro afi             identityref
         |  |  +--ro safi            identityref
         |  |  +--ro send-receive?   send-receive
         |  +--ro adj-rib-in
         |  |  +--ro tables* [afi safi]
         |  |     +--ro afi           identityref
         |  |     +--ro safi          identityref
         |  |     +--ro attributes
         |  |     |  +--ro uptodate?   boolean
         |  |     +--ro (routes)?
         |  +--ro effective-rib-in
         |  |  +--ro tables* [afi safi]
         |  |     +--ro afi           identityref
         |  |     +--ro safi          identityref
         |  |     +--ro attributes
         |  |     |  +--ro uptodate?   boolean
         |  |     +--ro (routes)?
         |  +--ro adj-rib-out
         |     +--ro tables* [afi safi]
         |        +--ro afi           identityref
         |        +--ro safi          identityref
         |        +--ro attributes
         |        |  +--ro uptodate?   boolean
         |        +--ro (routes)?
         +--ro loc-rib
            +--ro tables* [afi safi]
               +--ro afi           identityref
               +--ro safi          identityref
               +--ro attributes
               |  +--ro uptodate?   boolean
               +--ro (routes)?

BGP pipeline
^^^^^^^^^^^^
.. figure:: ./images/bgp-pipeline.png
   :alt: BGP pipeline.

   BGP pipeline - routes re-advertisement.

.. figure:: ./images/bgp-app-pipeline.png
   :alt: BGP Application Peer pipeline.

   BGP applcaition peer pipeline - routes injection.

Configuration
^^^^^^^^^^^^^
.. toctree::
   :maxdepth: 1

   bgp-user-guide-protocol-configuration
   bgp-user-guide-bgp-server
   bgp-user-guide-bgp-peering
   bgp-user-guide-bgp-application-peer
   bgp-user-guide-protocol-configuration-loader

References
^^^^^^^^^^
* `A Border Gateway Protocol 4 (BGP-4) <https://tools.ietf.org/html/rfc4271>`_
* `BGP Route Reflection <https://tools.ietf.org/html/rfc4456>`_
* `BGP Communities Attribute <https://tools.ietf.org/html/rfc1997>`_
* `BGP Support for Four-Octet Autonomous System (AS) Number Space <https://tools.ietf.org/html/rfc6793>`_
* `The Accumulated IGP Metric Attribute for BGP <https://tools.ietf.org/html/rfc7311>`_
* `4-Octet AS Specific BGP Extended Community <https://tools.ietf.org/html/rfc5668>`_
* `BGP Link Bandwidth Extended Community <https://tools.ietf.org/html/draft-ietf-idr-link-bandwidth-06>`_
* `Use of BGP for Routing in Large-Scale Data Centers <https://tools.ietf.org/html/rfc7938>`_
