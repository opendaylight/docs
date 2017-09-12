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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=19574>`_ (57.1%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/sfc/>`_
* All modules have been unit tested. Integration tests have been performed for
  all major features. System tests have been performed on most major features.

Migration
---------

* Is it possible migrate from the previous release? If so, how?

No changes were made to the SFC data model in this release, so
SFC is 100% compatible with the previous release.

Compatibility
-------------

Other than the API changes mentioned in the previous section, this
release is compatible with the previous release.

Bugs Fixed
----------

List of bugs fixed since the previous release

* `3712 <https://bugs.opendaylight.org/show_bug.cgi?id=3712>`_ Setting an SF on an SFP hop with an SF type different than the corresponding SFC hop should fail
* `7554 <https://bugs.opendaylight.org/show_bug.cgi?id=7554>`_ Update GUI after deprecating nsh-aware in SF and other changes in model
* `7555 <https://bugs.opendaylight.org/show_bug.cgi?id=7555>`_ SfcRenderingException for logicalSFF when SFs share a compute node
* `7629 <https://bugs.opendaylight.org/show_bug.cgi?id=7629>`_ Karaf 4 migration: provide Karaf 4 sfc features


Known Issues
------------

SFC needs changes in OVS to include the Network Service Headers (NSH) Chaining
encapsulation feature. This patch has been ongoing for quite a while, but has
finally been officially merged in OVS 2.8. ODL will be updated to use this new
version of OVS in the Oxygen release. Until then, SFC will use a branched
version of OVS based on 2.6.1, called the "Yi Yang Patch",
`located here <https://github.com/yyang13/ovs_nsh_patches>`_.
Previous versions of this OVS patch only supported VXLAN-GPE + NSH
encapsulation, but this version supports both ETH + NSH and VXLAN-GPE + ETH + NSH.

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=78823&order=Importance&product=sfc&query_format=specific>`_


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

* `ODL SFC Carbon release plan <https://wiki.opendaylight.org/view/Service_Function_Chaining:Nitrogen_Release_Plan>`_
* No major shifts in the release schedule from the release plan
