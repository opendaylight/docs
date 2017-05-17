============
Controller
============

Major Features
==============

odl-mdsal-broker
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=controller.git;a=blob;f=features/mdsal/features-mdsal/src/main/features/features.xml
* **Feature Description:**  Core MD-SAL implementations.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/controller/job/controller-csit-verify-3node-clustering/

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, akka uses port 2550.

* Other security issues?

  * Mo

Quality Assurance
=================

* `Link to Sonar Report https://jenkins.opendaylight.org/releng/view/controller/job/controller-sonar/`_ (60%)
* `Link to CSIT Jobs https://jenkins.opendaylight.org/releng/view/controller/`_

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  * There are no migration considerations.

Compatiblity
------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuraiton changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * <https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-9&chfieldto=2017-05-25&list_id=78854&product=controller&query_format=advanced&resolution=FIXED

Known Issues
------------

* List key known issues with workarounds

  * N/A

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&chfieldfrom=2016-08-9&chfieldto=2017-05-25&list_id=78855&product=controller&query_format=advanced>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * None

Standards
=========

* List of standards implemented and to what extent

  * None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Controller:Carbon:Release_Plan>`_
