User Network Interface Manager Plug-in (Unimgr)
===============================================

Overview
--------

The User Network Interface Manager (Unimgr) is an experimental/proof of concept
(PoC) project formed to initiate the development of data models and APIs
facilitating the use by software applications and/or service orchestrators of
OpenDaylight to configure and provision connectivity services, in particular
Carrier Ethernet services as defined by Metro Ethernet Forum (MEF), in physical
or virtual network elements.

MEF as defined the LSO Reference Architecture for the management and control of
domains and entities that enable cooperative LSO capabilities across one or
more service provider networks. The architecture also identifies the Management
Interface Reference Points (LSO Reference Points), the logical points of
interaction between specific functional management components. These LSO
Reference Points are further defined by interface profiles and instantiated by
APIs.

The LSO High Level Management Reference Architecture is shown below.  Note that
this is a functional architecture that does not describe how the management
components are implemented (e.g., single vs. multiple instances), but rather
identifies management components that provide logical functionality as well as
the points of interaction among them.

Unimgr provides support for both the Legato as well as the Presto interfaces.
These interface, and the APIs associated with them, are defined by YANG models
developed within MEF in collaboration with ONF and IETF. For the Boron release,
these are as follows:

Legato YANG modules:
https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=tree;f=legato-api/src/main/yang;hb=refs/heads/stable/boron

Presto YANG modules:
https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=tree;f=presto-api/src/main/yang;hb=refs/heads/stable/boron

An application/user can interact with Unimgr at either the service
orchestration layer (Legato) or the network resource provisioning layer
(Presto).

Unimgr Components
-----------------

Unimgr is comprised of the following OpenDaylight Karaf features:

+--------------------------------------+--------------------------------------+
| odl-unimgr-api                       | OpenDaylight :: UniMgr :: api        |
+--------------------------------------+--------------------------------------+
| odl-unimgr                           | OpenDaylight :: UniMgr               |
+--------------------------------------+--------------------------------------+
| odl-unimgr-console                   | OpenDaylight :: UniMgr :: CLI        |
+--------------------------------------+--------------------------------------+
| odl-unimgr-rest                      | OpenDaylight :: UniMgr :: REST       |
+--------------------------------------+--------------------------------------+
| odl-unimgr-ui                        | OpenDaylight :: UniMgr :: UI         |
+--------------------------------------+--------------------------------------+

Installing Unimgr
-----------------

After launching OpenDaylight, install the feature for Unimgr.  From the karaf
command prompt execute the following command:

::

    $ feature:install odl-unimgr-ui

Explore and exercise the Unimgr REST API
----------------------------------------

To see the Unimgr API, browse to this URL:
http://localhost:8181/apidoc/explorer/index.html

Replace localhost with the IP address or hostname where OpenDaylight is
running if you are not running OpenDaylight locally on your machine.

See also the Unimgr Developer Guide for a full listing of the API.
