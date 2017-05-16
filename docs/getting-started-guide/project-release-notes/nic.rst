===================
About this Document
===================

.. note::

   This was an intentionally a verbatim copy of sections from the `Project
   Lifecycle & Releases Document
   <http://www.opendaylight.org/project-lifecycle-releases#MatureReleaseProcess>`_
   which has the following to say about the Release Review Document:

   *Both the Release Plan and Release review document are intended to be
   relatively short, simple, posted publicly on the wiki documents to assist
   projects in coordinating among themselves, and the general world in gaining
   visibility.*

   Insofar as this has been changed, it has kept with in that spirit folding in
   our experience conducting release reviews.

.. important::

   When copying, please remove this entire "About this Document" section and
   simply fill out the next sections.

============
NIC
============

Major Features
==============
For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-nic-core-mdsal
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-core-mdsal/pom.xml;hb=HEAD
* **Feature Description:**  This feature contains the dependencies to use MDSAL features on NIC
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-intent-common
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-intent-common/pom.xml;hb=HEAD
* **Feature Description:**  This feature contains the lifecycle management for Intents, also is used to join two major features 'intent-statemachine' and 'intent-listeners'. This feature enable NIC to work with different renderers at the same time.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-statemachine
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-intent-statemachine/pom.xml;hb=HEAD
* **Feature Description:**  This feature is used to manage Intent state transactions and then share those transactions on MDSAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-listeners
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-listeners/pom.xml;hb=HEAD
* **Feature Description:**  This feature dependes of 'odl-nic-core-mdsal' to listen about changes on MDSAL, it works as a listener for Intent and network events.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

odl-nic-renderer-of
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=nic.git;a=blob_plain;f=features/odl-nic-renderer-of/pom.xml;hb=HEAD
* **Feature Description:**  This feature is responsible to apply network configurations based in Intents. Once an Intent is created, the 'intent-common' module will extract all information and then, send to 'renderer-of'.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

Documentation
=============

There is some outdated documentation at our wiki page: https://wiki.opendaylight.org/view/Network_Intent_Composition:Main

Securite Considerations
=======================

* Do you have any external interfaces other than RESTCONF?
No

  * If so, how are they secure?
  * What port numbers do they use?

* Other security issues?
N/A.

Quality Assurance
=================

* `Link to Sonar Report <URL>`_ 48.1% https://sonar.opendaylight.org/overview?id=44164
* `Link to CSIT Jobs <URL>`_ https://jenkins.opendaylight.org/releng/view/nic/job/nic-csit-1node-basic-all-carbon/
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

There are a guide to evaluate manual tests using NIC on our wiki page.

Migration
---------

* Is is possible migrate from the previous release? If so, how?
Yes, since there's no change of features from the previous releases.

Compatiblity
------------

* Is this release compatible with the previous release?
Yes
* Any API changes?
No
* Any configuraiton changes?
No

Bugs Fixed
----------

* List of bugs fixed since the previous release

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <URL>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

odl-nic-renderer-nemo
odl-nic-renderer-vtn
odl-nic-core-hazelcast

Standards
=========

* List of standrads implemented and to what extent

Release Mechanics
=================

* `Link to release plan <URL>`_
* Describe any major shifts in release schedule from the release plan

.. note::

   We will also ask about your testing of the latest SR, but that should
   probably not formally be part of this document.
