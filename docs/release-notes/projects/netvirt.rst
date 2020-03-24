=======
NetVirt
=======

Major Features
==============

Feature Name
------------

* **Feature Name:** odl-netvirt-openstack
* **Feature URL:** `odl-netvirt-openstack <https://git.opendaylight.org/gerrit/gitweb?p=netvirt.git;a=blob;f=features/odl-netvirt-openstack/pom.xml;hb=HEAD>`_
* **Feature Description:** NetVirt is a network virtualization solution that includes the following components:

  * Open vSwitch based virtualization for software switches.
  * Hardware VTEP for hardware switches.
  * Service Function Chaining support within a virtualized environment.
  * Support for OVS and DPDK-accelerated.
  * OVS data paths, L3VPN (BGPVPN), EVPN, ELAN, distributed L2 and L3, NAT and Floating IPs, IPv6, Security Groups,
    MAC and IP learning.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NetVirt CSIT <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-magnesium//>`_

Documentation
=============

* **User Guide(s):**

  * :doc:`User Guide <netvirt:user-guide/index>`
  * :doc:`OpenStack Guide <netvirt:openstack-guide/index>`

* **Developer Guide(s):**

  * :doc:`Developer Guide <netvirt:developer-guide/index>`

* **Contributor Guide(s):**

  * :doc:`Contributor Guide <netvirt:contributor-guide/index>`

Security Considerations
=======================

* No known issues.

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.netvirt%3Anetvirt>`_
* `All CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netvirt-csit>`_
* `Main test job <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-magnesium//>`_

Migration
---------

* Nothing beyond general migration requirements.

Compatibility
-------------

* Nothing beyond general compatibility requirements.

Bugs Fixed
----------

* `Fixed Bugs <https://jira.opendaylight.org/browse/NETVIRT-1651?filter=10908&jql=project%20%3D%20NETVIRT%20AND%20fixVersion%20%3D%20Magnesium%20AND%20issuetype%20%20%3D%20Bug%20AND%20resolution%20%3D%20Done%20ORDER%20BY%20priority%20DESC%2C%20updated%20DESC>`_

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/browse/NETVIRT-1668?filter=10908&jql=project%20%3D%20NETVIRT%20AND%20affectedVersion%20%3D%20magnesium%20AND%20issuetype%20%3D%20Bug%20AND%20resolution%20%3D%20Unresolved%20AND%20status%20!%3D%20Verified%20AND%20status%20!%3D%20Resolved%20ORDER%20BY%20priority%20DESC%2C%20updated%20DESC>`_

End-of-life
===========

Both SFC Netvirt and COE Netvirt Integration are reaching an EOL due to lack of support
from their respective projects. COE Netvirt CSIT jobs are already disabled, and SFC is deprecated
for Sodium and will be removed for Magnesium if support does not come from the SFC project.

Standards
=========

* N/A

Release Mechanics
=================

* `Release Plan <https://jira.opendaylight.org/browse/TSC-241>`_
