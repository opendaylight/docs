=========================
Service Function Chaining
=========================

Major Features
==============

TODO Add these new features:
odl-sfc-vpp
odl-sfc-pot-netconf-renderer
odl-sfc-genius


odl-sfc-netconf
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Provides functionality to communicate with netconf capable Service Functions.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-scf-openflow
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  SFC stand-alone classifier.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-openflow-renderer
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Renderer functionality for OpenFlow capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfclisp
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Programs LISP capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-sb-rest
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Implements a South Bound Rest interface to send configuration to REST-capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-ui
----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature is the SFC User Interface.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-vnfm-tacker
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Tacker VNF Manager interface.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-ios-xe-renderer
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Renderer functionality for IO XE switches that use netconf.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-vpp-renderer
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Renderer functionality for fd.io VPP (Vector Packet Processor) switches that use netconf.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-pot
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature implements a Proof of Transit for the Service Functions.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron


These features are consumed by the User facing features above:


odl-sfc-model
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature defines and implements the SFC data model as specified here https://datatracker.ietf.org/doc/rfc7665/
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-provider
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature provides an easy-to-use interface to the sfc-model.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-provider-rest
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature provides no functionality, and just installs the necessary features for SFC restconf.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-ovs
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature provides functionality for SFC to communicate with OVSDB for SFF configuration.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-bootstrap
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  Feature to load an initial SFC configuration, to be used for testing.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron

odl-sfc-test-consumer
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sfc.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature is used for testing only.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sfc/job/sfc-csit-3node-clustering-all-boron



Documentation
=============

TODO

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * `Guide Name <URL>`_
  * *Note: for most projects this should not be needed since it should just be
    feature:install <feature-name>*

* **User Guide(s):**

  * `Guide Name <URL>`_

* **Developer Guide(s):**

  * `Guide Name <URL>`_

Security Considerations
=======================

N/A


Quality Assurance
=================

TODO

* `Link to Sonar Report <URL>`_ (Test coverage percent)
* `Link to CSIT Jobs <URL>`_
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

Migration
---------

TODO

* Is is possible migrate from the previous release? If so, how?

Compatiblity
------------

TODO

* Is this release compatible with the previous release?
* Any API changes?
* Any configuraiton changes?

Bugs Fixed
----------

TODO

* List of bugs fixed since the previous release

Known Issues
------------

SFC needs changes in OVS to include the Network Service Headers (NSH) Chaining encapsulation feature. This patch has been ongoing for quite a while (2 years+), and still has not been officially merged.  Until NSH is officially merged in OVS, SFC will use a branched version of OVS based on 2.6.1, called the "Yi Yang Patch", `located here <https://github.com/yyang13/ovs_nsh_patches>`_. Previous versions of this OVS patch only supported VXLAN-GPE + NSH encapsulation, but this version supports both ETH + NSH and VXLAN-GPE + ETH + NSH.

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=78823&order=Importance&product=sfc&query_format=specific>`_

End-of-life
===========

List of features/APIs which are EOLed, deprecated, and/or removed in this release

* In the Beryllium release, the Service Function nsh-aware and request-classification API fields were deprecated, and were subsequently removed in Carbon.

    * Use the corresponding fields in the Service Function Type instead.

* In the Boron release, the symmetrice API field was deprecated in the Service Function Chain and Rendered Service Path data models, and were subsequently removed in Carbon.

    * Use the Service Function Path (SFP) symmetric field instead of the SFC or RSP symmetric field.
    * Or, if the SFP symmetric field is not present and any of the Service Functions has a Service Function type that sets bidirection true, then the resulting Rendered Service Path will be symmetric.

Standards
=========

* List of standrads implemented and to what extent

* `IETF SFC RFC <https://datatracker.ietf.org/doc/rfc7665>`_
* `IETF NSH <https://tools.ietf.org/html/draft-ietf-sfc-nsh-07>`_ Only NSH Metadata type 1 is implemented.
* `OpenFlow v1.3 <http://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-switch-v1.3.4.pdf>`_


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/Service_Function_Chaining:Carbon_Release_Plan>`_
* No major shifts in the release schedule from the release plan

