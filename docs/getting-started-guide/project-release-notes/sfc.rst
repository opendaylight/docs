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


Features removed in this release
================================

* odl-sfc-bootstrap - used to load an initial configuration that is no longer needed
* odl-sfcofl2 - was deprecated since it was renamed to odl-sfc-openflow-renderer


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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=19574>`_ (55.9%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/sfc/>`_
* All modules have been unit tested. Integration tests have been performed for
  all major features. System tests have been performed on most major features.

Migration
---------

The impacts on the SFC data models in this release are minimal.
Several fields that were marked as deprecated in Beryllium and
Boron have been removed in Carbon, as follows. No automatic data
migration is supported.

**Service Chain Symmetry**

Previously a Service Chain could be marked symmetric by using
either the symmetric flag in the Service Function Chain (SFC),
the Service Function Path (SFP), or the Rendered Service Path (RSP).
This approach can be confusing if the SFC, SFP, or RSP have different
values for the symmetric flag. The symmetric flag has been removed
from the SFC and RSP and can now only be set in the SFP. Additionally,
if the symmetric flag is not present in the SFP, if any of the Service
Functions is of a Service Funtion Type (SFT) that has the bidirectional
flag set true, then the Service Chain will be symmetric. The SFP
symmetric flag overides the SFT bidirectional flag. To say that
a Service Chain is symmetric means that 2 RSPs will be created
internally, one uplink and another downlink.


**Deprecated Service Function fields**

The Service Function ``nsh-aware`` and ``requires-classification`` fields
have been moved to the Service Function Type.

Compatibility
-------------

Other than the API changes mentioned in the previous section, this
release is compatible with the previous release.

Bugs Fixed
----------

List of bugs fixed since the previous release

* https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-09&chfieldto=2017-05-25&list_id=78767&product=sfc&query_format=advanced&resolution=FIXED


Known Issues
------------

SFC needs changes in OVS to include the Network Service Headers (NSH) Chaining
encapsulation feature. This patch has been ongoing for quite a while (2 years+),
and still has not been officially merged. Until NSH is officially merged in
OVS, SFC will use a branched version of OVS based on 2.6.1, called the
"Yi Yang Patch", `located here <https://github.com/yyang13/ovs_nsh_patches>`_.
Previous versions of this OVS patch only supported VXLAN-GPE + NSH
encapsulation, but this version supports both ETH + NSH and VXLAN-GPE + ETH + NSH.

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=78823&order=Importance&product=sfc&query_format=specific>`_

The following bug was found during Carbon RC testing, which was
originally marked as a blocker. Upon further investigation, the
MDSAL team decided its not a blocker and decided to postpone
fixing it until Carbon SR1.

* https://bugs.opendaylight.org/show_bug.cgi?id=8501


End-of-life
===========

List of features/APIs which are EOLed, deprecated, and/or removed in this release

* In the Beryllium release, the Service Function nsh-aware and request-classification
  API fields were deprecated, and were subsequently removed in Carbon.

  * Use the corresponding fields in the Service Function Type instead.

* In the Boron release, the symmetrice API field was deprecated in the Service
  Function Chain and Rendered Service Path data models, and were subsequently
  removed in Carbon.

  * Use the Service Function Path (SFP) symmetric field instead of the SFC or
    RSP symmetric field.
  * Or, if the SFP symmetric field is not present and any of the Service
    Functions has a Service Function type that sets bidirection true, then
    the resulting Rendered Service Path will be symmetric.

Standards
=========

* List of standards implemented and to what extent

* `IETF SFC RFC <https://datatracker.ietf.org/doc/rfc7665>`_
* `IETF NSH <https://tools.ietf.org/html/draft-ietf-sfc-nsh-07>`_ Only NSH Metadata type 1 is implemented.
* `OpenFlow v1.3 <http://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-switch-v1.3.4.pdf>`_


Release Mechanics
=================

* `ODL SFC Carbon release plan <https://wiki.opendaylight.org/view/Service_Function_Chaining:Carbon_Release_Plan>`_
* No major shifts in the release schedule from the release plan
