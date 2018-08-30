Name
----

EPC - Openflow Extension

Repo Name
---------

ofextensions/epc

Description
-----------

This project will offer various OpenFlow capabilities required for
implementing OpenFlow-based solutions for EPC networks. OpenFlow
capabilities such as:

-  GTP Tunnels OXMs (for example: matching GTP TEID, Tunnel Inner
   IPs/Ports).

GTP Tunnels OXMs
~~~~~~~~~~~~~~~~

3GPP TS 29.281 specification (http://www.3gpp.org/DynaReport/29281.htm)
covers GTP-U protocol definition for S1-U and S5/S8, X2 and S4
interfaces. GTP-U runs on top of UDP and uses a well-known port of 2152.
The IP layer can be IPv4 or IPv6. GTP-U encapsulates bearer traffic
between the eNodeB and SGW, between SGW and PGW, between eNodeB’s and
between SGW and SGSN. Traffic separation between bearers is performed by
a Tunnel Endpoint Identifier (TEID) that is carried in the GTP-U header.
The TEID identifies the tunnel to the receiving function and is
different in each direction. The receiving function (on each direction)
is the function that allocates the TEID and the sending party must use
it when sending data on the specific tunnel. Setup of the tunnel is
performed outside the scope of the GTP-U with another protocol.

Currently GTP-U related OXMs are not part of the OpenFlow standard and
therefore any implementation of those fields must be implemented as
vendor specific extension. It is envisioned that those OXMs would become
part of the OpenFlow standard.

On a general note, this proposal is not fully comprehensive and its
coverage will expand in a future phase.

Scope
-----

Implementing the described capability. Due to this dependency, this
content is optional for Boron - OpenFlow plugin project may need to
extend its API in order to allow implementing those features from a
different repository.

Resources Committed (developers committed to working)
-----------------------------------------------------

| Koby Aizer (koby.aizer@hpe.com) [gerrit id: kobya]
| Elisha Oren (elisha.oren@hpe.com)

Initial Committers
------------------

| Koby Aizer (koby.aizer@hpe.com) [gerrit id: kobya]
| Ravit Perez (ravit.peretz@hpe.com) [gerrit id: ravit]
| Elisha Oren (elisha.oren@hpe.com)
| Yair Zinger (yair.zinger@hpe.com)

Vendor Neutral
--------------

| No vendor package names in code
| No vendor branding present in code or output of build
| No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

TBD