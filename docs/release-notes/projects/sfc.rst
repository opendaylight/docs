=========================
Service Function Chaining
=========================

Major Features
==============

odl-sfc-netconf
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Provides functionality to communicate with netconf capable Service Functions.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-scf-openflow
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  SFC stand-alone openflow classifier.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


odl-sfc-scf-vpp
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  SFC stand-alone vpp classifier.
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


odl-sfc-ui
----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature is the SFC User Interface.
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


odl-sfc-test-consumer
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature is used for testing only.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-carbon


Documentation
=============

* **User Guide(s):**

  * :ref:`sfc-user-guide`

* **Developer Guide(s):**

  * :ref:`sfc-dev-guide`


Security Considerations
=======================

None.


Quality Assurance
=================

* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/sfc/>`_
* All modules have been unit tested. Integration tests have been performed for
  all major features. System tests have been performed on most major features.

Migration
---------

Nothing special is needed to migrate from the previous release.

Compatibility
-------------

This release of SFC is completely compatible with the previous release.
The create and delete Rendered Service Path (RSP) RPCs were deprecated
in this release, but are still available. These RPCs will be removed in
the next release. Instead of using the RSP RPCs, RSP creation is now
triggered by Service Function Path (SFP) creation. SFP creation will
trigger RSP creation in the configuration data store, which will in
turn trigger RSP creation in the operational data store. Previously,
RSPs were only stored in the operational data store, which would be
lost if OpenDaylight restarts. Now it is possible to maintain RSPs
when OpenDaylight is restarted.

Bugs Fixed
----------

List of bugs fixed since the previous release

* `SFC-213 <https://jira.opendaylight.org/browse/SFC-213>`_ SFC statistics dont always work
* `SFC-214 <https://jira.opendaylight.org/browse/SFC-214>`_ Fix sb-rest wiring
* `SFC-216 <https://jira.opendaylight.org/browse/SFC-216>`_ Fix exception message check for bad macs
* `SFC-218 <https://jira.opendaylight.org/browse/SFC-218>`_ Fix sfc-scf-vpp wiring


Known Issues
------------

SFC needs changes in OVS to include the Network Service Headers (NSH) Chaining
encapsulation feature. This patch has been ongoing for quite a while, but has
finally been officially merged in OVS 2.8. OpenDaylight will be updated to
use this new version of OVS in the Fluorine release. Until then, SFC will
use a branched version of OVS based on 2.6.1, called the "Yi Yang Patch",
`located here <https://github.com/yyang13/ovs_nsh_patches>`_.
Previous versions of this OVS patch only supported VXLAN-GPE + NSH
encapsulation, but this version supports both ETH + NSH and
VXLAN-GPE + ETH + NSH.

* `Link to Open Bugs <https://jira.opendaylight.org/browse/SFC-218?jql=project%20%3D%20SFC%20AND%20status%20%3D%20Open>`_


End-of-life
===========

* None


Standards
=========

* List of standards implemented and to what extent

* `IETF SFC RFC <https://datatracker.ietf.org/doc/rfc7665>`_
* `IETF NSH <https://tools.ietf.org/html/draft-ietf-sfc-nsh-07>`_ Only NSH Metadata type 1 is implemented.
* `OpenFlow v1.3 <http://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-switch-v1.3.4.pdf>`_


Release Mechanics
=================

* `ODL SFC Oxygen release plan <https://wiki.opendaylight.org/view/Service_Function_Chaining:Oxygen_Release_Plan>`_
* No major shifts in the release schedule from the release plan
