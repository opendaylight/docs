===
VTN
===

Major Features
==============

odl-vtn-manager-rest
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/odl-vtn-manager-rest/pom.xml;h=89ef18b6b71461828fc0dc36162d1820f0ed5625;hb=refs/heads/stable/nitrogen
* **Feature Description:**  This is the feature that allows users to use the VTN virtualization, by creating the various components as needed for the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-manager-all-nitrogen/


odl-vtn-manager-neutron
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/odl-vtn-manager-neutron/pom.xml;h=600411e41a52ddc8ac90e9a3c5c58b73ed774b8c;hb=refs/heads/stable/nitrogen
* **Feature Description:**  This feature provides support for integration with Openstack (L2 API)
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-openstack-newton-neutron-nitrogen/

Documentation
=============

* **Installation Guide(s):**

  * :ref:`vtn-install-guide`

* **User Guide(s):**

  * :ref:`VTN User Guide <vtn-user-guide>`

* **Developer Guide(s):**

  * :ref:`VTN Developer Guide <vtn-dev-guide>`
  * :ref:`VTN Openstack Developer Guide <vtn-openstack-dev-guide>`

Security Considerations
=======================

* No Issues.


Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.vtn%3Adistribution&did=1>`_ (56.2%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/vtn/>`_
*  CSIT covers most of the options in RESTCONF
*  The 3 node deployment has not been tested well.

Migration
---------

* Not Supported.

Compatibility
-------------

* No Specific Compatibility issues.

Bugs Fixed
----------

* 8761 - VTN coordinator Portmapping fails due to unnecessary hex conversion.
* 9024 - VTN Manager Set null to bundle version qualifier if it is empty.

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

* `Link to release plan <https://wiki.opendaylight.org/view/VTN:Nitrogen_Release_Plan>`_
* There was no deviation from the plan.
