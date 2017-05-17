===
VTN
===

Major Features
==============

odl-vtn-manager-rest
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/features-vtn-manager/src/main/features/features.xml;h=e4fe7f62405d07653bffa291f984f2cd30db4a4c;hb=refs/heads/stable/carbon#l41
* **Feature Description:**  This is the feature that allows users to use the VTN virtualization, by creating the various components as needed for the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-manager-only-carbon/,https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-manager-all-carbon/


odl-vtn-manager-neutron
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/features-vtn-manager/src/main/features/features.xml;h=e4fe7f62405d07653bffa291f984f2cd30db4a4c;hb=refs/heads/stable/carbon#l49
* **Feature Description:**  This feature provides support for integration with Openstack (L2 API)
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-openstack-newton-neutron-carbon/

Documentation
=============

* **Installation Guide(s):**

* **User Guide(s):**

  * `VTN User Guide <http://docs.opendaylight.org/en/latest/user-guide/virtual-tenant-network-(vtn).html>`_
  * `VTN How Tos <http://docs.opendaylight.org/en/latest/user-guide/virtual-tenant-network-(vtn).html#vtn-manager-usage-examples>`_

* **Developer Guide(s):**

  * `VTN Developer Guide <http://docs.opendaylight.org/en/latest/developer-guide/virtual-tenant-network-(vtn).html>`_
  * `VTN Openstack Developer Guide <http://docs.opendaylight.org/en/latest/opendaylight-with-openstack/openstack-with-vtn.html>`_

Security Considerations
=======================

* No Issues.


Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.vtn%3Adistribution&did=1>`_ (Test coverage percent)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/vtn/>`_
*  CSIT covers most of the options in RESTCONF
*  The 3 node deployment has not been tested well.

Migration
---------

* No Specific Migration Requirements.

Compatiblity
------------

* No Specific Compatibility issues.

Bugs Fixed
----------

* 6632
* 6278
* 7360
* 7402
* 6859
* 7969
* 7652
* 8191
* 8184
* 8211
* 8212

Known Issues
------------

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?component=VTN%20Manager&list_id=78860&product=vtn&resolution=--->`_

End-of-life
===========

* None

Standards
=========

* None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/VTN:Carbon_Release_Plan>`_
* There was no deviation from the plan.
