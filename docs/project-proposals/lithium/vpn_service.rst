Name
----

VPN Service

Repo Name
---------

1. vpnservice

Motivation
----------

L2 and L3 technologies are widely deployed both in data centers and
transport networks. As SDN technologies proliferate, it will be crucial
for datacenters and WAN networks to seamlessly interwork. BGP and other
routing protocols have already been proven in the Internet and can
provide a good mechanism for SDN domains to interoperate with a legacy
WAN network or other SDN domains.

Architectures like L2/L3 BGP-MPLS VPNs (RFC 4364, EVPN) are also gaining
good traction in orchestration systems like Openstack.

More information can be found at :
https://blueprints.launchpad.net/neutron/+spec/neutron-bgp-vpn and
analyzing approaches from Contrail and Nuage Networks.

As a provider of networking services to Openstack, it is important that
Opendaylight support such services under the Openstack Neutron
Integration. This document proposes implementation of L2 VPN and L3 VPN
services for data center tenants using technologies like BGP-MPLS VPN
and EVPN.

This project will also include building the infrastructure required to
support such services in the controller and components required to
integrate these services with Openstack.

The proposed plan is to build L3 VPN Services using L3VPN based on
BGP-MPLS (RFC 4364) in the first Phase (targeted for Lithium). L2 VPN
Service based on EVPN (draft-ietf-l2vpn-evpn) is planned for a future
ODL release.

.. figure:: VPNService.png
   :alt: VPNService.png

   VPNService.png

Description
-----------

**Architecture**

This project will implement the infrastructure services required to
support L3 VPN service (and later L2 VPN Service). These will be
implemented as OSGI bundles that can be used generally as NSFs in the
controller, initially we intend to leverage open source routing
applications as pluggable components (see below for other options). The
set of basic services required for L3 service are:

1. L3 VPN Manager: Provides VRF infrastructure in the controller for BGP
MPLS L3 VPN.

2. MP-BGP routing stack: Run an instance of MP-BGP to provide L3 VPN
service. This should support the MP-BGP extensions, RFC 3107 and support
for VPN route distribution (RFC 4364). This MP-BGP instance will peer
with the DC GW and exchange per tenant route information. We have few
options when it comes to implementing the MP-BGP routing stack: a.
Enhance ODL-BGP: Enhance the BGP-LS module, which is already present in
ODL, to add the MP-BGP/VPN functionality and structure it as a
combination of NSF (MP-BGP/VPN) and plugin (BGP-LS). b. Enhance BGP from
SDNi application: Enhance BGP from ODL SDNi application to add the
MP-BGP/VPN functionality and run it as an application over REST APIs as
per the current design. c. Integrate opensource routing stack: Pick an
opensource BGP implementation that already supports MP-BGP and VPN
functionality and integrate it with ODL. This can be integrated as a
routing application using REST API or wrap them in a JNI bundle and run
as an NSF within ODL for better performance. In phase 1 (for lithium),
we plan to go with option c due to better TTM and eventually move to
option a or b in a later release of ODL. The scope of this project will
be to implement the infrastructure to support different implementations
of BGP to realize VPN functionality in the controller.

3. MPLS Label Manager: For BGP-MPLS based VPNs to work; we need a
service to allocate labels to each VPN. These labels will be distributed
to remote sites using BGP and therefore they are expected to be unique,
within a tenant’s L3 domain.. In this case however, we will not require
the use of such protocols and will instead use ODL to compute unique
labels for the tenant.

4. NextHop Manager: The FIB maintains a mapping of route prefixes to the
nexthop. A nexthop is defined at the forwarding state that is required
to forward a packet that matches a specific condition towards the
ultimate destination. Note that the nexthop may directly point to a
connected destination or a remote destination. The nexthop maintains
state that will allow vSwitch to encapsulate the outgoing packet so that
it can be consumed correctly by the destination or a transit node
towards the destination, as the case may be.

5. FIB Service: This module will support Forwarding Information Base
(FIB Service), which will maintain the forwarding state i.e. association
of route with nexthop for each VRF and push it to vSwitch as OF rules.

6. Openstack Neutron Service: The L3 services in Openstack are
implemented as service plugins that run in the context of the Neutron
server. Samples of such service plugins can be found at
“https://wiki.openstack.org/wiki/Neutron”. The Openstack Neutron Service
NSF in Opendaylight currently supports limited L2 services under
Openstack i.e. it implements the ML2 driver interface. This service will
need to be enhanced to support the L3 functions as per ML3 interface
under Openstack.

The following are some of the services envisioned for a later release:

1. L2 VPN Manager: Provides MAC table infrastructure in the controller
for EVPN

2. RIB Service: Module to reconcile routes from different protocols and
apply policies to compute the forwarding entries.

3. LDP stack: Label Distribution Protocol to distribute transport
labels.

4. IGP stack: IGP stack like OSPF or ISIS to distribute the route
information within a domain

.. figure:: VPNServiceArch.png
   :alt: VPN Service Architecture

   VPN Service Architecture

Scope
-----

The scope of this work includes adding new set of NSF to support L3 VPN
service.

It will also define the yang models required for various services that
will offer an NBI for L2/L3 VPN services.

The project will initially aim at building the infrastructure to support
BGP-MPLS L3 VPNs (RFC 4364).

Other features will be scoped in future Opendaylight releases. Please
refer to the previous section for additional details on the scope.

''' Proposal presentation in TSC '''

`VPN Service presentation <Media:VPNService_TSC.pptx>`__

Impact on other ODL projects
----------------------------

The VPN service would need to interface with the OVSDB plugin/Neutron
part of the OVSDB Integration. The VPN service APIs related to Neutron
would be hosted in this project and would act as proxy module. The
business logic would be part of the VPN Service

In addition, the scope includes enhancing existing components like
BGP-LS/SDNi.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  `Abhijit Kumbhare
   (Ericsson) <mailto:abhijit.kumbhare@ericsson.com>`__ - abhijitk

-  `Prem Sankar G (Ericsson) <mailto:prem.sankar.g@ericsson.com>`__ -
   gpremsankar

-  `Mohnish Anumala (Dell) <mailto:Mohnish_Anumala@Dell.com>`__ -
   manumala

-  `Ronald VanderPol (SURFnet) <mailto:Ronald.vanderPol@SURFnet.nl>`__

-  `Hema Gopalakrishnan
   (Ericsson) <mailto:hema.gopalakrishnan@ericsson.com>`__

-  `Vishal Thapar (Ericsson) <mailto:vishal.thapar@ericsson.com>`__ -
   thapar

-  `Sasidharan S
   (Ericsson) <mailto:sasidharan.s.sambasivam@ericsson.com>`__ -
   sasidharan

-  `Faseela K (Ericsson) <mailto:faseela.k@ericsson.com>`__ - k.faseela

-  `Deepthi V V (Ericsson) <mailto:deepthi.v.v.@ericsson.com>`__ -
   deepthivv88

-  `Kanagasundaram (Ericsson) <mailto:kanagasundaram@ericsson.com>`__ -
   kksundaram73

-  `Manisha Malla (Ericsson) <mailto:Manisha.Malla@ericsson.com>`__ -
   manisha.m

-  `Dimple Jain (Ericsson) <mailto:dimple.jain@ericsson.com>`__

-  `Anuradha Raju (Ericsson) <mailto:anuradha.raju@ericsson.com>`__

-  `Abhinav Gupta (Ericsson) <mailto:abhinav.gupta@ericsson.com>`__

Initial Committers
------------------

-  `Vivek Srivastava
   (Ericsson) <mailto:Vivek.v.srivastava@ericsson.com>`__

-  `Sikhivahan Gundu
   (Ericsson) <mailto:Gundu.sikhivahan@ericsson.com>`__

-  `Prem Sankar G (Ericsson) <mailto:prem.sankar.g@ericsson.com>`__ -
   gpremsankar

Vendor Neutral
--------------

No vendor package names in code. No vendor branding present in code or
output of build. No vendor branding present in documentation.

Meets Board Policy (including IPR)
----------------------------------
