=======
NetVirt
=======

Major Features
==============

Feature Name
------------

* **Feature Name:** odl-netvirt-openstack
* **Feature URL:** `odl-netvirt-openstack <https://git.opendaylight.org/gerrit/gitweb?p=netvirt.git;a=blob;f=features/odl-netvirt-openstack/pom.xml;hb=HEAD>`_
* **Feature Description:**  NetVirt is a network virtualization solution that includes the following components as well
  as others: Open vSwitch based virtualization for software switches, Hardware VTEP for hardware switches,
  Service Function Chaining support within a virtualized environment, support for OVS and DPDK-accelerated
  OVS data paths, L3VPN (BGPVPN), EVPN, ELAN, distributed L2 and L3, NAT and Floating IPs, IPv6, Security Groups,
  MAC and IP learning.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NetVirt CSIT <https://jenkins.opendaylight.org/releng/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-fluorine/>`_

Documentation
=============

* **User Guide(s):**

  * :doc:`netvirt:docs/user-guide/index`
  * :doc:`netvirt:docs/openstack-guide/index`

* **Developer Guide(s):**

  * :doc:`netvirt:docs/developer-guide/index`

* **Contributor Guide(s):**

  * :doc:`netvirt:docs/contributor-guide/index`

Security Considerations
=======================

No known issues.

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/overview?id=64219>`_
* `All CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netvirt-csit>`_
* `Main test job <https://jenkins.opendaylight.org/releng/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-fluorine/>`_

Migration
---------

Nothing beyond general migration requirements.

Compatibility
-------------

Nothing beyond general compatibility requirements.

Bugs Fixed
----------

* `Closed Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20NETVIRT%20AND%20resolution%20%3D%20Done%20AND%20fixVersion%20%3D%20Fluorine%20>`_

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20NETVIRT%20AND%20resolution%20%3D%20Unresolved%20%20AND%20affectedVersion%20%3D%20Fluorine%20>`_

End-of-life
===========

N/A

Standards
=========

N/A

Release Mechanics
=================

* `Release Plan <https://jira.opendaylight.org/browse/TSC-43>`_
* Project was on schedule
