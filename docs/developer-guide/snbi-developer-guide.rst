SNBI Developer Guide
====================

Overview
--------

Key distribution in a scaled network has always been a challenge.
Typically, operators must perform some manual key distribution process
before secure communication is possible between a set of network
devices. The Secure Network Bootstrapping Infrastructure (SNBI) project
securely and automatically brings up an integrated set of network
devices and controllers, simplifying the process of bootstrapping
network devices with the keys required for secure communication. SNBI
enables connectivity to the network devices by assigning unique IPv6
addresses and bootstrapping devices with the required keys. Admission
control of devices into a specific domain is achieved using whitelist of
authorized devices.

SNBI Architecture
-----------------

At a high level, SNBI architecture consists of the following components:

-  SNBI Registrar

-  SNBI Forwarding Element (FE)

.. figure:: ./images/snbi/snbi_arch.png
   :alt: SNBI Architecture Diagram

   SNBI Architecture Diagram

SNBI Registrar
~~~~~~~~~~~~~~

Registrar is a device in a network that validates device against a
whitelist and delivers device domain certificate. Registrar includes the
following:

-  RESTCONF API for Domain Whitelist Configuration

-  Certificate Authority

-  SNBI Southbound Plugin

**RESTCONF API for Domain Whitelist Configuration:.**

RESTCONF APIs are used to configure the whitelist set device in the
registrar in the controller. The registrar interacts with the MD-SAL to
obtain the whitelist set of devices and validate the device trying to
join a domain. Furthermore it is possible to run multiple registrar
instances pertaining to each domain.

**SNBI Southbound Plugin:.**

The Southbound Plugin implements the protocol state machine necessary to
exchange device identifiers, and deliver certificates. The southbound
plugin interacts with MD-SAL and the certificate authority to validate
and create device domain certificates. The device domain certificate
thus generated could be used to prove the validity of the devices within
the domain.

**Certificate Authority:.**

A simple certificate authority is implemented using the Bouncy Castle
package. The Certificate Authority creates the certificates from the
device CSR requests received from the devices. The certificates thus
generated are delievered to the devices using the Southbound Plugin as
discussed earlier.

SNBI Forwarding Element (FE)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The SNBI Forwarding Element runs on Linux machines which have to join
the domain. The Device UDI(Universal Device Identifier) or the device
identifier could be derived from a multitude of parameters in the host
machine, but most of the parameters derived from the host are known
ahead or doesn’t remain constant across reloads. Therefore, each of the
SNBI FE should be configured explicitly with a UDI that is already
present in the device white list. The registrar service IP address must
be provided to the first host (Forwarding Element) to be bootstrapped.
As mentioned in the `section\_title <#_host_configuration>`__ section,
the registrar service IP address is **fd08::aaaa:bbbb:1**. The First
Forwarding Element must be configured with this IPv6 address.

The forwarding element must be installed or unpacked on a Linux host
whose network layer traffic must be secured. The FE performs the
following functions:

-  Neighour Discovery

-  Bootstrapping with device domain certificates

-  Host Configuration

Neighbour Discovery
^^^^^^^^^^^^^^^^^^^

Neighbour Discovery (ND) is the first step in accommodating devices in a
secure network. SNBI performs periodic neighbour discovery of SNBI
agents by transmitting ND hello packets. The discovered devices are
populated in an ND table. Neighbour Discovery is periodic and
bidirectional. ND hello packets are transmitted every 10 seconds. A 40
second refresh timer is set for each discovered neighbour. On expiry of
the refresh timer, the Neighbour Adjacency is removed from the ND table
as the Neighbour Adjacency is no longer valid. It is possible that the
same SNBI neighbour is discovered on multiple links, the expiry of a
device on one link does not automatically remove the device entry from
the ND table. In the exchange of ND keepalives, the device UDI is
exchanged.

Bootstrapping with Device Domain Certificates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Bootstrapping a device involves the following sequential steps:

-  Authenticate a device using device identifier (UDI-Universal Device
   Identifier or SUDI-Secure Universal Device Identifier) - The device
   identifier is exchanged in the hello messages.

-  Allocate the appropriate device ID and IPv6 address to uniquely
   identify the device in the network

-  Allocate the required keys by installing a Device Domain Certificate

-  Accommodate the device in the domain

A device which is already bootstrapped acts as a proxy to bootstrap the
new device which is trying to join the domain.

-  Neighbour Invite phase - When a proxy device detects a new neighbor
   bootStrap connect message is initiated on behalf of the New device
   --**NEIGHBOUR CONNECT** Msg. The message is sent to the registrar to
   authenticate the device UDI against the whitelist of devices. The
   source IPv6 address is the proxy IPv6 address and the destination
   IPv6 address is the registrar IPv6 address. The SNBI Registrar
   provides appropriate device ID and IPv6 address to uniquely identify
   the device in the network and then invites the device to join the
   domain. — \ **NEIGHBOUR INVITE** Msg.

-  Neighbour Reject - If the Device UDI is not in the white list of
   devices, then the device is rejected and is not accepted into the
   domain. The proxy device just updates its DB with the reject
   information but still maintains the Neighbour relationship.

-  Neighbour BootStrap Phase - Once the new device gets a neighbour
   invite message, it tries to boot strap itself by generating a key
   pair. The device generates a Certificate Sign Request (CSR) PKCS10
   request and gets it signed by the CA running at the SNBI
   Registrar. — \ **BS REQ** Msg. Once the certificate is enrolled and
   signed by the CA, the generated x.509 certificate is returned to the
   new device to complete the bootstrap process. — \ **BS RESP** Msg.

Host Configuration
~~~~~~~~~~~~~~~~~~

Host configuration involves configuring a host to create a secure
overlay network, assigning appropriate IPv6 address, setting up GRE
tunnels, securing the tunnels traffic via IPsec and enabling
connectivity via a routing protocol. Docker is used to package all the
required dependent software modules.

.. figure:: ./images/snbi/first_fe_bs.png
   :alt: SNBI Bootstrap Process

   SNBI Bootstrap Process

-  Interace configuration: The Iproute2 package, which comes by default
   packaged in the Linux distributions, is used to configure the
   required interface (snbi-fe) and assign the appropriate IPv6 address.

-  GRE Tunnel Creation: LinkLocal GRE tunnels are created to each of the
   discovered devices that are part of the domain. The GRE tunnels are
   used to create the overlay network for the domain.

-  Routing over the Overlay: To enable reachability of devices within
   the overlay network a light weight routing protocol is used. The
   routing protocol of choice is the RPL (Routing Protocol for Low-Power
   and Lossy Networks) protocol. The routing protocol advertises the
   device domain IPv6 address over the overlay network. **Unstrung** is
   the open source implementation of RPL and is packaged within the
   docker image. More details on unstrung is available at
   http://unstrung.sandelman.ca/

-  IPsec: IPsec is used to secure any traffic routed over the tunnels.
   StrongSwan is used to encrypt traffic using IPsec. More details on
   StrongSwan is available at https://www.strongswan.org/

Docker Image
~~~~~~~~~~~~

The SNBI Forwarding Element is packaged in a docker container available
at this link: https://hub.docker.com/r/snbi/boron/. For more information
on docker, refer to this link: https://docs.docker.com/linux/.

To update an SNBI FE Daemon, build the image and copy the image to
/home/snbi directory. When the docker image is run, it autoamtically
generates a startup configuration file for the SNBI FE daemon. The
startup configuration script is also available at /home/snbi.

.. figure:: ./images/snbi/docker_snbi.png
   :alt: SNBI Docker Image

   SNBI Docker Image

Key APIs and Interfaces
-----------------------

The only API that SNBI exposes is to configure the whitelist of devices
for a domain.

The POST method below configures a domain - "secure-domain" and
configures a whitelist set of devices to be accommodated to the domain.

::

    {
      "snbi-domain": {
        "domain-name": "secure-domain",
        "device-list": [
          {
            "list-name": "demo list",
            "list-type": "white",
            "active": true,
            "devices": [
              {
                "device-id": "UDI-FirstFE"
              },
              {
                "device-id": "UDI-dev1"
              },
              {
                "device-id": "UDI-dev2"
              }
            ]
          }
         ]
      }
    }

The associated device ID must be configured on the SNBI FE (see above).

API Reference Documentation
---------------------------

See the generated RESTCONF API documentation at:
http://localhost:8181/apidoc/explorer/index.html

Look for the SNBI module to expand and see the various RESTCONF APIs.

