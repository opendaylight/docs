PacketCable User Guide
======================

Overview
--------

These components introduce a DOCSIS QoS Gates management using the PCMM
protocol. The driver component is responsible for the PCMM/COPS/PDP
functionality required to service requests from PacketCable Provider and
FlowManager. Requests are transposed into PCMM Gate Control messages and
transmitted via COPS to the CMTS. This plugin adheres to the
PCMM/COPS/PDP functionality defined in the CableLabs specification.
PacketCable solution is an MDSAL compliant component.

PacketCable Components
----------------------

PacketCable is comprised of two OpenDaylight bundles:

+--------------------------------------+--------------------------------------+
| Bundle                               | Description                          |
+======================================+======================================+
| odl-packetcable-policy-server        | Plugin that provides PCMM model      |
|                                      | implementation based on CMTS         |
|                                      | structure and COPS protocol.         |
+--------------------------------------+--------------------------------------+
| odl-packetcable-policy-model         | The Model provided provides a direct |
|                                      | mapping to the underlying QoS Gates  |
|                                      | of CMTS.                             |
+--------------------------------------+--------------------------------------+

See the PacketCable `YANG
Models <https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=tree;f=packetcable-policy-model/src/main/yang>`__.

Installing PacketCable
----------------------

To install PacketCable, run the following ``feature:install`` command
from the Karaf CLI

::

    feature:install odl-packetcable-policy-server-all odl-restconf odl-mdsal-apidocs

Explore and exercise the PacketCable REST API
---------------------------------------------

To see the PacketCable APIs, browse to this URL:
http://localhost:8181/apidoc/explorer/index.html

Replace localhost with the IP address or hostname where OpenDaylight is
running if you are not running OpenDaylight locally on your machine.

.. note::

    Prior to setting any PCMM gates, a CCAP must first be added.

Postman
-------

`Install the Chrome
extension <https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en>`__

`Download and import sample packetcable
collection <https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=tree;f=packetcable-policy-server/doc/restconf-samples>`__

Postman Operations
^^^^^^^^^^^^^^^^^^

.. figure:: ./images/packetcable-postman.png
   :alt: Postman Operations

   Postman Operations

