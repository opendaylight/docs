===
NIC
===

Major Features
==============

odl-nic-core-mdsal
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-core-mdsal/pom.xml;hb=stable/nitrogen
* **Feature Description:**  This feature contains the dependencies to use MDSAL
  features on NIC
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-nitrogen/

odl-nic-intent-common
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-intent-common/pom.xml;hb=stable/nitrogen
* **Feature Description:**  This feature contains the lifecycle management for
  Intents, also is used to join two major features 'intent-statemachine' and
  'intent-listeners'. This feature enable NIC to work with different renderers
  at the same time.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-nitrogen/

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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=44164>`_ (33.2% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-nitrogen/>`_
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

  There are a guide to evaluate manual tests using NIC on our `wiki page
  <https://wiki.opendaylight.org/view/Network_Intent_Composition:Main>`_

Migration
---------

* Is it possible to  migrate from the previous release? If so, how?

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

  For Nitrogen release, NIC contains multiple renderers, where each renderer can be used at the same time
  without uninstalling NIC and restarting ODL.

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this or last
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

* `Link to release plan <https://wiki.opendaylight.org/view/NIC:Nitrogen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  Capability to use multiple Renderers at the same time.
  Capability to support new Intent definitions.
  Integration with Intent State Machine.
  Integration with BGPCEP project in order to advertise routes using Intents.
  Apply OpenFlow rules using OpenFlowPlugin Meters
  Integration with Genius project in order to manage the Meter IDs.
