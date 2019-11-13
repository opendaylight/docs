==========
Controller
==========

Major Features
==============

odl-mdsal-broker
----------------

* **Feature URL:** `Broker <https://git.opendaylight.org/gerrit/gitweb?p=controller.git;a=blob;f=features/mdsal/odl-mdsal-broker/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** Core MD-SAL implementations.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/controller/job/controller-csit-verify-3node-clustering/>`_

Documentation
=============

* **Developer Guide(s):**

  * :ref:`Developer Guide <controller-dev-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, akka uses port 2550 and by default communicates with unencrypted,
    unauthenticated messages. Securing akka communication is not described
    here, but those concerned should refer to: `Configuring SSL/TLS for
    Akka Remoting <http://doc.akka.io/docs/akka//2.5.11/scala/remoting.html>`_.

* Other security issues?

  * No

Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/controller/job/controller-sonar/>`_ (60%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/controller/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, no specific steps needed.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * Some deprecated APIs have been removed

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release.

  * `Fixed Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20CONTROLLER%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20AND%20resolution%20%3D%20Done%20AND%20resolutiondate%20%3E%20%272018%2F10%2F01%27%20ORDER%20BY%20resolutiondate>`_

Known Issues
------------

* List key known issues with workarounds.

  * None

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * The controller binding and DOM MD-SAL APIs, classes and interfaces in packages
    prefixed with org.opendaylight.controller, have been deprecated in favor of
    the APIs in the MDSAL project prefixed with org.opendaylight.mdsal.

  * Various other APIs and classes in the controller project that have been long since
    deprecated and no longer used have been removed.

Standards
=========

* List of standards implemented and to what extent.

  * None

Release Mechanics
=================

* `TSC-154 <https://jira.opendaylight.org/browse/TSC-134>`_
