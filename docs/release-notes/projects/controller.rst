==========
controller
==========

Major Features
==============

odl-mdsal-broker
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=controller.git;a=blob;f=features/mdsal/odl-mdsal-broker/pom.xml
* **Feature Description:**  Core MD-SAL implementations.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/controller/job/controller-csit-verify-3node-clustering/

Documentation
=============

* **User Guide(s):**

  * :ref:`User Guide <controller-user-guide>`

* **Developer Guide(s):**

  * :ref:`controller-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, akka uses port 2550 and by default communicates with unencrypted, unauthenticated messages. Securing akka communication isn't described here, but those concerned should look at the "Configuring SSL/TLS for Akka Remoting" section at http://doc.akka.io/docs/akka//2.4.17/scala/remoting.html.

* Other security issues?

  * No

Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/controller/job/controller-sonar/>`_ (60%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/controller/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes, no specific steps needed.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
----------

* `CONTROLLER-1791 <https://jira.opendaylight.org/browse/CONTROLLER-1791>`_ member-1-shard-inventory-operational should not be in default clustering config
* `CONTROLLER-1793 <https://jira.opendaylight.org/browse/CONTROLLER-1793>`_ Exceptions in listener threads are going to stdout instead of karaf.log
* `CONTROLLER-1798 <https://jira.opendaylight.org/browse/CONTROLLER-1798>`_ ShardManager will miss sending a PeerAddressResolved message to local shards when UpdateSchemaContext comes after MemberUp
* `CONTROLLER-1799 <https://jira.opendaylight.org/browse/CONTROLLER-1799>`_ Archetype should self test during Maven build
* `CONTROLLER-1809 <https://jira.opendaylight.org/browse/CONTROLLER-1809>`_ Failed to restart all blueprint containers within 5 minutes
* `CONTROLLER-1812 <https://jira.opendaylight.org/browse/CONTROLLER-1812>`_ DOMForwardedWriteTransaction infinite loop on cancel after exception

Known Issues
------------

* List key known issues with workarounds

  * None

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * The DataChangeListener interface was previously deprecated and is scheduled for removal
    in the next release, Flourine. All users of this interface must be converted to the
    DataTreeChangeListener interface.

  * The config subsystem was previously deprecated and is scheduled for removal
    in the next release, Flourine. All projects still using the config subsystem
    must be converted to use Blueprint.

  * The controller EntityOwnershipService interface was previously deprecated and is
    scheduled for removal in the next release, Flourine. All users of this interface must be
    converted to the mdsal EntityOwnershipService interface.
  
  * The controller liblldp module has been moved to the openflowplugin project and will be
    removed from the controller project in Flourine.

  * Various other APIs and classes in the controller project that have been long since
    deperecated may be removed in Flourine.

Standards
=========

* List of standards implemented and to what extent

  * None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Controller:Oxygen:Release_Plan>`_
