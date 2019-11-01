=======
NETVIRT
=======

Major Features
==============

Feature Name
------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature Name**
     - odl-netvirt-openstack
   * - **Feature URL**
     - `odl-netvirt-openstack <https://git.opendaylight.org/gerrit/gitweb?p=netvirt.git;a=blob;f=features/odl-netvirt-openstack/pom.xml;hb=HEAD>`_
   * - **Feature Description**
     - NetVirt is a network virtualization solution that includes the following components as well
       as others: Open vSwitch based virtualization for software switches, Hardware VTEP for hardware switches,
       Service Function Chaining support within a virtualized environment, support for OVS and DPDK-accelerated
       OVS data paths, L3VPN (BGPVPN), EVPN, ELAN, distributed L2 and L3, NAT and Floating IPs, IPv6, Security Groups,
       MAC and IP learning.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - No
   * - **CSIT Test**
     - `NetVirt CSIT <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-1cmb-0ctl-0cmp-openstack-rocky-upstream-stateful-sodium/>`_

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

No known issues.

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/overview?id=64219>`_
* `All CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netvirt-csit>`_
* `Main test job <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-1cmb-0ctl-0cmp-openstack-rocky-upstream-stateful-sodium/>`_

Migration
---------

Nothing beyond general migration requirements.

Compatibility
-------------

Nothing beyond general compatibility requirements.

Bugs Fixed
----------

* `Closed Bugs <https://jira.opendaylight.org/browse/NETVIRT-1617?jql=project%20%3D%20NETVIRT%20AND%20resolution%20%3D%20Done%20AND%20fixVersion%20%3D%20Sodium>`_

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20NETVIRT%20AND%20resolution%20%3D%20Unresolved%20AND%20affectedVersion%20%3D%20Sodium>`_

End-of-life
===========

SFC Netvirt as well as COE Netvirt Integration is reaching an EOL due to lack of support from respective
projects. COE Netvirt CSIT jobs are already disabled, SFC is deprecated for Sodium, and soon to be
removed for Magnesium, if required support does not come from SFC project.

Standards
=========

N/A

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-209>`_
* Project was on schedule
