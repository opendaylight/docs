Name
----

OpenDaylight Virtual Tenant Network
===================================

Description
-----------

OpenDaylight Virtual Tenant Network (VTN) is an application that
provides multi-tenant virtual network on an SDN controller.
Conventionally, huge investment in the network systems and operating
expenses are needed because the network is configured as a silo for each
department and system. So, various network appliances must be installed
for each tenant and those boxes cannot be shared with others. It is a
heavy work to design, implement and operate the entire complex network.
The uniqueness of VTN is a logical abstraction plane. This enables the
complete separation of logical plane from physical plane. Users can
design and deploy any desired network without knowing the physical
network topology or bandwidth restrictions. VTN allows the users to
define the network with a look and feel of conventional L2/L3 network.
Once the network is designed on VTN, it will automatically be mapped
into underlying physical network, and then configured on the individual
switch leveraging SDN control protocol. The definition of logical plane
makes it possible not only to hide the complexity of the underlying
network but also to better manage network resources. It achieves
reducing reconfiguration time of network services and minimizing network
configuration errors.

Core portion of the VTN code, that we plan to contribute, is based on
our product having 2 years of proven market record, and it has been
developed in C++. OpenDaylight VTN is a program that configures VTN
model, and it comes with Web API. Virtual network, configured as VTN
model, is implemented by calling API of SDN controller.

.. figure:: VTN_Overview.jpg
   :alt: VTN_Overview.jpg
   :width: 500px

   VTN_Overview.jpg

Please see also the `OpenDaylight Virtual Tenant Network`_

Scope
-----

The OpenDaylight Virtual Tenant Network function includes:

-  Network Virtualization Function

   -  Virtual Network Construction
   -  Mapping of Physical Network Resources
   -  vBridge Functions
   -  vRouter Functions
   -  Flow Filter Functions

-  Multiple SDN Controller Coordination
-  Coordination between OpenFlow Network and L2/L3 Network
-  VTN API

Resources Committed (developers committed to working)
-----------------------------------------------------

Committers listed below are committed as resources for development:

Committers:

-  Takayuki Kawagishi (kawagishi-takayuki@mxj.nes.nec.co.jp)
-  Taiki Kondo (kondo-taiki@mxt.nes.nec.co.jp)
-  Kasumi Takeshige (takeshige-kasumi@mxk.nes.nec.co.jp)
-  Hideyuki Tai (h-tai@cd.jp.nec.com)
-  Tomohisa Yamabe (t-yamabe@bp.jp.nec.com)
-  Shigeru Yasuda (s-yasuda@da.jp.nec.com)

Additional Contributors:

-  Sarath Babu G (sarathbg@hcl.com)

Initial Committers
------------------

-  Koji Ashihara (k-ashihara@ce.jp.nec.com)
-  Fei Gao (f-gao@ab.jp.nec.com)
-  Satoshi Hieda (hieda@cb.jp.nec.com)
-  Takayuki Kawagishi (kawagishi-takayuki@mxj.nes.nec.co.jp)
-  Taiki Kondo (kondo-taiki@mxt.nes.nec.co.jp)
-  Masashi Kudo (m-kudo@cw.jp.nec.com)
-  Satoshi Oonuki (s-oonuki@ay.jp.nec.com)
-  Kasumi Takeshige (takeshige-kasumi@mxk.nes.nec.co.jp)
-  Hideyuki Tai (h-tai@cd.jp.nec.com)
-  Koji Tanaka (k-tanaka@ak.jp.nec.com)
-  Hiroshi Ueno (ueno@ap.jp.nec.com)
-  Tomohisa Yamabe (t-yamabe@bp.jp.nec.com)
-  Shigeru Yasuda (s-yasuda@da.jp.nec.com)

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

MeetsBoardPolicy(including IPR)
-------------------------------

.. _OpenDaylight Virtual Tenant Network: OpenDaylight_Virtual_Tenant_Network_(VTN):Main