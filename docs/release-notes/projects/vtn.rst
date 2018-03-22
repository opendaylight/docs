===
VTN
===

Major Features
==============

odl-vtn-manager-rest
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/odl-vtn-manager-rest/pom.xml;h=f47f7681bc04f054e8dbaa69a01ae600ef9e60b7;hb=refs/heads/stable/oxygen#l24
* **Feature Description:**  This is the feature that allows users to use the VTN virtualization, by creating the various components as needed for the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-manager-all-oxygen/


odl-vtn-manager-neutron
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=vtn.git;a=blob;f=manager/features/odl-vtn-manager-neutron/pom.xml;h=39c9d48dd430f5970860566a5f888b4b6c269992;hb=refs/heads/stable/oxygen#l24
* **Feature Description:**  This feature provides support for integration with Openstack (L2 API)
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/vtn/job/vtn-csit-1node-openstack-pike-neutron-oxygen/

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
*  The 3 node deployment is experimental and not well tested.

Migration
---------

* Not Supported.

Compatibility
-------------

* No Specific Compatibility issues.

Bugs Fixed
----------

* vtn-164 - VTN Coordinator Flowlistentry Creation fails for "port-from" and "port-to"
* vtn-165 - UDP L4 match details of source and destination creation failure in Flowlistentry
* vtn-166 - vtn-inet-match protocol and dscp values not mapped from VTN Coordinator to VTN manager
* vtn-167 - VTN Coodinator: Upgrading Tomcat to 7.0.81

Known Issues
------------

* `Link to Open Bugs <https:jira.opendaylight.org/browse/VTN>`_

End-of-life
===========

* None

Standards
=========

* None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/VTN:Oxygen_Release_Plan>`_
* There was no deviation from the plan.
