====================
Sample Release Notes
====================

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

.. important::

   Please do not remove any sections. Also, short sentences are better than
   "n/a" or "none" as it is often confusing as to whether that means there are
   no issues or you simply didn't think about or address anything.

Project Name
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users. Remove this paragraph.

Feature Name
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sample.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This is a sample feature that performs various
  sample tasks and provides the implementation of RFC 0000.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sample/job/sample-csit-1node-feature-all-carbon/

Documentation
=============

.. Please provide the URL to each document at docs.opendaylight.org. If the
.. document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * `Guide Name <URL>`_

    .. note: for most projects this should not be needed since it should just
             be ``feature:install <feature-name>``.

* **User Guide(s):**

  * Link to Guide. Should be formatted something like::

      :ref:`Guide name <guide-label-name>`

    Where the <guide-label-name> is something like::

      .. _guide-label-name:

      Project User Guide
      ==================
      ....

    As described in `Cross-referencing arbitrary locations
    <http://www.sphinx-doc.org/en/stable/markup/inline.html#cross-referencing-arbitrary-locations>`_.

* **Developer Guide(s):**

  * Link to Guide. Use same format as above.

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

* Is it possible to migrate from the previous release? If so, how?

.. note:: This is asking if somebody can move from an installation of the
          previous release while keeping data. This isn't currently, natively
          supported in Opendaylight, so if it's possible, it is because of
          some project-speicific work and instructions which should be
          explained here. Remove this note.

Compatibility
-------------

.. Please include a short description of any changes not just a link to a patch

* Is this release compatible with the previous release?
* Any API changes?
* Any configuration changes?

Bugs Fixed
----------

.. Please include a short description of any bugs not just the link.

* List of bugs fixed since the previous release

Known Issues
------------

.. Please include a short description of any bugs not just the link.

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

.. note:: We will also ask about your testing of the latest SR, but that should
          probably not formally be part of this document. Remove this note.
