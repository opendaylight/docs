===
VTN
===

Major Features
==============

odl-vtn-manager-rest
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/odl-vtn-manager-rest/pom.xml;h=89ef18b6b71461828fc0dc36162d1820f0ed5625;hb=HEAD#l24
* **Feature Description:**  This is the feature that allows users to use the VTN virtualization, by creating the various components as needed for the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-manager-only-nitrogen,https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-manager-all-nitrogen


odl-vtn-manager-neutron
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/features-vtn-manager/src/main/features/features.xml;hb=refs/heads/stable/carbon#l49
* **Feature Description:**  This feature provides support for integration with Openstack (L2 API)
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-openstack-newton-neutron-carbon/

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
