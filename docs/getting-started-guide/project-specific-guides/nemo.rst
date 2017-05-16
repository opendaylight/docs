======================
NEtwork MOdeling(NEMO)
======================

Major Features
==============


* odl nemo rest provides an abstracted intent model whose target is to enable network users/applications to describe their intent in an intuitive way without caring about the underlying physical network.
* nemo engine is the core module of NEMO project, which releases the mapping from intent to physical network. It includes two import process: intent-virtual network(VN) and virtual network-physical network(PN).
* openflow renderer is a sourthbound render to translate the mapping result of VN-PN to flow table in devices supporting for openflow protocol.
* cli render is also a sourthbound render to translate the mapping result of VN-PNinto forwarding table in devices supporting for traditional protocol.
* nemo engine ui is reponsible for showing the status of physical network, intent, generated virtual network and mapping result of VN-PN, which facilitate users to understand better the intent handling process if they want to.

NEMO Engine UI
--------------

* **Feature Name:** odl-nemo-engine-ui
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nemo.git;a=blob;f=nemo-features/src/main/features/features.xml;
* **Feature Description:**  DSL based for the abstraction of network models and conclusion of operation patterns.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nemo/job/nemo-csit-1node-engine-all-carbon/

Documentation
=============

* **User Guide(s):**

  * `NEMO User Guide <http://docs.opendaylight.org/en/latest/user-guide/nemo-user-guide.html>`_

* **Developer Guide(s):**

  * `NEMO Developer Guide <http://docs.opendaylight.org/en/latest/developer-guide/nemo-developer-guide.html>`_

Security Considerations
=======================

* There are no security issues found.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=53347>`_ 42.8%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/nemo/job/nemo-csit-1node-engine-all-carbon/>`_
* `Manual Tests <https://wiki.opendaylight.org/view/NEMO:Carbon:System_Test>`_
* External System Test is done manually, since the sandbox environment could not satisfy NEMO's requirements.

Migration
---------

* Nothing beyond general Carbon migration requirements. 

Compatiblity
------------

* Nothing beyond general Carbon compatibility constraints. 

Bugs Fixed
----------

* `Bug Report <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&bug_status=VERIFIED&list_id=47710&product=nemo&query_format=advanced&resolution=--->`_

Known Issues
------------


* For using openflow-renderer, requiring special switch to construct physical network. The install guide is in https://github.com/zhangmroy?tab=repositories. Other virtual switch, such as, ovs, will be support in the Carbon version.
* For using cli-renderer, the physical network should be constructed with HuaWei's device: NE40E. More devices will be considered in the Carbon version.

End-of-life
===========

* Nothing deprecated, EOL. 

Standards
=========

* N/A

Release Mechanics
=================

* `NEMO Release Plan <https://wiki.opendaylight.org/view/NEMO:Carbon:Release_Plan>`_
* Project was on schedule
