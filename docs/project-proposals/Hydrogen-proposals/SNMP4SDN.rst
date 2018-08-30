Name
----

SNMP4SDN (original name: SAL Plugin for Supporting Generic Commodity
Ethernet Switch)

Description
-----------

Current SDN technology is usually assumed to be based on network
infrastructures using OpenFlow switches. Actually, SDN is not limited to
OpenFlow, for example OpenDaylight SAL can support multiple southbound
protocols. To fulfill the scope of underlying switches supported in
OpenDaylight, Ethernet switches should also be considered. Commodity
Ethernet switches have the advantage of low price and is programmable to
some extent (i.e. using CLI and SNMP to modify the ACL, MAC table,
forwarding table, etc). In an SDN built on commodity Ethernet switches,
the upper layer applications could be responsible for making all the
forwarding decisions for each switch, and the switches execute data
plane forwarding as assigned. Therefore, we believe that commodity
Ethernet switch has its advantage and warrants a position in SDN
technology development. Off-the-shelf commodity Ethernet switches are
commonly allowed to be configured by SNMP, and the Ethernet switch can
actively report its status to the administrative computer (i.e.
OpenDaylight controller) using SNMP trap. Therefore, we propose an SNMP
southbound plugin to control underlying devices supporting SNMP using
off-the-shelf commodity Ethernet switch. In addition to SNMP support,
this plugin will provide capabilities to manage configurations that can
only be accessed via CLI, e.g. ACL, disabling flooding, etc., since such
configurations are necessary for using Ethernet switches for SDN.
Therefore, there will be three phases in this project, as follows. (1)
Creating an SNMP SouthBound Plugin: to configure Ethernet switches via
SNMP. (2) The plugin configures Ethernet switches via CLI, for settings
that SNMP cannot access. (3) SAL extension: for (1) and (2) we will
contribute extensions to the SAL configuration APIs to provide
additional API to support SNMP and CLI usage as specified above.

The following figure depicts the described components.

.. figure:: SNMP4SDN_Architecture.jpg
   :alt: SNMP4SDN_Architecture.jpg
   :width: 500px

   SNMP4SDN_Architecture.jpg

P.S. Slides of our idea for building an SDN upon Ethernet switches can
be found `here`_, and this project focuses on the topic of the
southbound plugin and extensions to SAL API.

Scope
-----

1. SNMP SouthBound Plugin. (The main purpose of this plugin is to
support Ethernet switches as the data plane devices for an SDN.
Configurations not currently supported by SNMP on Ethernet switches will
be managed via CLI).

2. Extensions to the SAL configuration APIs.

(A table of API is given
`here <:File:SAL_API_for_SNMP_SouthBound_Plugin.pdf>`__.)

Release Plan
------------

`Release Plan 2013`_

Resources Committed (developers committed to working)
-----------------------------------------------------

Yi-Ling Hsieh <ylhsieh at itri.org.tw> (ITRI)

Pai-Wei Wang <pwwang at itri.org.tw> (ITRI)

Initial Committers
------------------

Yi-Ling Hsieh <ylhsieh at itri.org.tw> (ITRI)

Pai-Wei Wang <pwwang at itri.org.tw> (ITRI)

Vendor Neutral
--------------

No vendor package names in code

No vendor branding present in code or output of build

No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------


.. _here: https://wiki.opendaylight.org/images/b/b3/Peregrine4.pdf
.. _Release Plan 2013: SNMP4SDN:Release_Plan_2013