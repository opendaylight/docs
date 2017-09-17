===
NIC
===

Major Features
==============

odl-nic-core-mdsal
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-core-mdsal/pom.xml;hb=stable/carbon
* **Feature Description:**  This feature contains the dependencies to use MDSAL
  features on NIC
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-intent-common
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-intent-common/pom.xml;hb=stable/carbon
* **Feature Description:**  This feature contains the lifecycle management for
  Intents, also is used to join two major features 'intent-statemachine' and
  'intent-listeners'. This feature enable NIC to work with different renderers
  at the same time.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-statemachine
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-intent-statemachine/pom.xml;hb=stable/carbon
* **Feature Description:**  This feature is used to manage Intent state
  transactions and then share those transactions on MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-listeners
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-listeners/pom.xml;hb=stable/carbon
* **Feature Description:**  This feature dependes of 'odl-nic-core-mdsal' to
  listen about changes on MDSAL, it works as a listener for Intent and network
  events.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-renderer-of
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-renderer-of/pom.xml;hb=stable/carbon
* **Feature Description:**  This feature is responsible to apply network
  configurations based in Intents. Once an Intent is created, the
  'intent-common' module will extract all information and then, send to
  'renderer-of'.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/


Documentation
=============

* **User Guide(s):**

  * :ref:`nic-user-guide`

* **Developer Guide(s):**

  * :ref:`nic-dev-guide`

Additional information can be found at the
`NIC wiki page <https://wiki.opendaylight.org/view/Network_Intent_Composition:Main>`_.
  
Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  No

* Other security issues?

  N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=44164>`_ (48.1% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/>`_
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

  There are a guide to evaluate manual tests using NIC on our `wiki page
  <https://wiki.opendaylight.org/view/Network_Intent_Composition:Main>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Migration with user configuration and state is not supported.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes

* Any API changes?

  No

* Any configuration changes?

  No

Bugs Fixed
----------

* List of bugs fixed since the previous release

Known Issues
------------

* List key known issues with workarounds

  For Carbon release, NIC contains multiple renderers, but just one renderer can be used at the same time
  to use another renderer after start NIC, you have to uninstall NIC and restart ODL.

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=79901&product=nic>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

* odl-nic-renderer-nemo
* odl-nic-renderer-vtn
* odl-nic-core-hazelcast

Standards
=========

* List of standards implemented and to what extent

  N/A

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/NIC:Carbon:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  Increase code coverage and initial implementation of Intent life cycle management.
