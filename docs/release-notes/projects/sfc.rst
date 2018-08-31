===============================
Service Function Chaining (SFC)
===============================

Major Features
==============

odl-sfc-netconf
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Provides functionality to communicate with netconf capable Service Functions and switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-scf-openflow
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  SFC stand-alone OpenFlow classifier.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-scf-vpp
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  SFC stand-alone VPP classifier.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-openflow-renderer
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Renderer functionality for OpenFlow capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfclisp
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Programs LISP capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-sb-rest
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Implements a South Bound Rest interface to send configuration to REST-capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-vnfm-tacker
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Tacker VNF Manager interface.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-ios-xe-renderer
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Renderer functionality for IO XE switches that use netconf.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-vpp-renderer
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Renderer functionality for fd.io VPP (Vector Packet Processor) switches that use netconf.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-pot
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature implements a Proof of Transit for the Service Functions.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-statistics
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature implements SFC statistics gathering.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


These features are consumed by the User facing features above
=============================================================


odl-sfc-genius
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature implements the Genius utilities created by SFC project.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-model
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature defines and implements the SFC data model as specified here https://datatracker.ietf.org/doc/rfc7665/
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-pot-netconf-renderer
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature implements the Netconf rendering for the Proof of Transit for the Service Functions.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-provider
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature provides an easy-to-use interface to the sfc-model.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-provider-rest
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature provides no functionality, and just installs the necessary features for SFC restconf.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-ovs
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature provides functionality for SFC to communicate with OVSDB for SFF configuration.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


Documentation
=============

* **User Guide(s):**

  * :ref:`sfc-user-guide`

* **Developer Guide(s):**

  * :ref:`sfc-dev-guide`


Security Considerations
=======================

There are no major security considerations to take into account for SFC.


Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.sfc%3Asfc-parent>`_ (51.2%)

* Links to CSIT Jobs

  * `CSIT Job Basic <https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-rest-basic-all-fluorine/>`_
  * `CSIT Job Docker full deploy <https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-docker-full-deploy-all-fluorine/>`_

* All modules have been unit tested.

* It is possible to launch CSIT jobs from Gerrit patches for extended testing.
  The following CSIT jobs can be launched for major code changes.

  * test-sfc-basic (launches the sfc-rest-basic test suite)
  * test-sfc-full (launches the sfc-full-deploy test suite)


Migration
---------

* There were no major changes to the data model in this release that would impede migrations from the previous release.
* The only migration issue will be with the version of OVS supported as explained in the Compatibility section.


Compatibility
-------------

* Creating and Deleting Rendered Service Paths (RSPs) via RPC was deprecated in the Oxygen release, and has now been completely removed.
* Support for Network Service Headers (NSH) has been officially implemented in the OVS 2.9 release.
  As a result, support for the older, unofficial branched OVS versions has been removed, and now only OVS 2.9 is supported.


Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://jira.opendaylight.org/browse/SFC-226?jql=project%20in%20(sfc)%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20created%20%3E%3D%202018-03-07%20AND%20created%20%3C%3D%202018-08-07>`_


Known Issues
------------

* `Link to Open Bugs <https://jira.opendaylight.org/browse/SFC>`_


End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * RSP creation and deletion via RPC has been removed.


Standards
=========

* List of standards implemented and to what extent

  * `IETF SFC RFC <https://datatracker.ietf.org/doc/rfc7665>`_
  * `IETF NSH <https://tools.ietf.org/html/draft-ietf-sfc-nsh-07>`_ Only NSH Metadata type 1 is implemented.
  * `OpenFlow v1.3 <http://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-switch-v1.3.4.pdf>`_


Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/stable-fluorine/release-process/release-schedule.html>`_

* There were no major shifts from the release plan.

