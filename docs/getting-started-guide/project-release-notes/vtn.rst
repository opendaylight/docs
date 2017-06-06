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

Compatiblity
------------

* No Specific Compatibility issues.

Bugs Fixed
----------

* 6632 - VTN Coordinator Build Issues with Fedora 24
* 7360 - VTN Coordinator Build Issues in Fedora 25
* 7402 - VTN Coordinator Tomcat Upgrade to 7.0.73
* 6859 - Clean up package names across ODL for yangtools
* 7969 - VTN Coordinator Issues with recent Postgres Versions
* 7652 - VTN Manager Support for Karaf 4
* 8191 - VTN Manager Addressed some Checkstyle/findbugs warnings
* 8184 - VTN Manager Removed some log messages when handling send-barrier RPC
* 8211 - VTN Manager Addressed Problems in mapping VTN Flow and MD-SAL Flow
* 8212 - VTN Manager Fixed Failure in retrieving dataflow

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
