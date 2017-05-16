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
Project Name
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

Feature Name
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sample.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This is a sample feature that performs various
  sample tasks and provides the implementation of RFC 0000.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sample/job/sample-csit-1node-feature-all-boron/

Documentation
=============

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

* Do you have any external interfaces other than RESTCONF?

  * If so, how are they secure?
  * What port numbers do they use?

* Other security issues?

Quality Assurance
=================

* `Link to Sonar Report <URL>`_ (Test coverage percent)
* `Link to CSIT Jobs <URL>`_
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

Migration
---------

* Is is possible migrate from the previous release? If so, how?

Compatiblity
------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuraiton changes?

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
