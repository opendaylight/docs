==========
controller
==========

Major Features
==============

odl-mdsal-broker
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=controller.git;a=blob;f=features/mdsal/odl-mdsal-broker/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  Core MD-SAL implementations.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/controller/job/controller-csit-verify-3node-clustering/

Documentation
=============

* **Developer Guide(s):**

  * :ref:`Developer Guide <controller-dev-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, akka uses port 2550 and by default communicates with unencrypted, unauthenticated messages. Securing akka communication isn't described here, but those concerned should look at the "Configuring SSL/TLS for Akka Remoting" section at http://doc.akka.io/docs/akka//2.5.11/scala/remoting.html.

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

  * Some APIs have been removed

* Any configuration changes?

  * No

Bugs Fixed
----------

* `CONTROLLER-1765 <https://jira.opendaylight.org/browse/CONTROLLER-1765>`_ trace:transactions should suppress false TransactionChain positives, by white list, or showing only x2+
* `CONTROLLER-1855 <https://jira.opendaylight.org/browse/CONTROLLER-1855>`_ Controller should not error log any OptimisticLockFailedException which applications actually handle 
* `CONTROLLER-1769 <https://jira.opendaylight.org/browse/CONTROLLER-1769>`_ Global RPC call error in cluster
* `CONTROLLER-1838 <https://jira.opendaylight.org/browse/CONTROLLER-1838>`_ follower reports 401 (unauthorized) and 500 (Internal Error) when leader is isolated 
* `CONTROLLER-1844 <https://jira.opendaylight.org/browse/CONTROLLER-1844>`_ Unable to start blueprint container for bundle org.opendaylight.netconf.restconf-nb-bierman02-auth/1.8.0
* `CONTROLLER-1836 <https://jira.opendaylight.org/browse/CONTROLLER-1836>`_ Deadlock scenario with multi-shard transactions
* `CONTROLLER-1834 <https://jira.opendaylight.org/browse/CONTROLLER-1834>`_ Transaction Trace tool wiring for ping-pong DataBroker is wrong
* `CONTROLLER-1835 <https://jira.opendaylight.org/browse/CONTROLLER-1835>`_ ShardStatsMXBean is not a valid JMX MXBean, due to isActive in FollowerInfo
* `CONTROLLER-1832 <https://jira.opendaylight.org/browse/CONTROLLER-1832>`_ Transaction Trace tool wiring creates second BindingToNormalizedNodeCodec
* `CONTROLLER-1783 <https://jira.opendaylight.org/browse/CONTROLLER-1783>`_ Member fails to rejoin cluster after it is quarantined
* `CONTROLLER-1751 <https://jira.opendaylight.org/browse/CONTROLLER-1751>`_ Sporadic cluster failure when member is restarted in OF cluster test
* `CONTROLLER-1830 <https://jira.opendaylight.org/browse/CONTROLLER-1830>`_ Add path to exception logs
* `CONTROLLER-1802 <https://jira.opendaylight.org/browse/CONTROLLER-1802>`_ Reduce ConcurrentDOMDataBroker TX failure logging from WARN to DEBUG and add @CheckReturnValue to WriteTransaction submit()
* `CONTROLLER-1825 <https://jira.opendaylight.org/browse/CONTROLLER-1825>`_ TransactionContextWrapper acting as blocker
* `CONTROLLER-1823 <https://jira.opendaylight.org/browse/CONTROLLER-1823>`_ Regression in OF cluster test
* `CONTROLLER-1814 <https://jira.opendaylight.org/browse/CONTROLLER-1814>`_ Datastore transactions fail to converge during partitioning
* `CONTROLLER-1816 <https://jira.opendaylight.org/browse/CONTROLLER-1816>`_ model-topology depends on odlparent 2.0.5
* `CONTROLLER-1764 <https://jira.opendaylight.org/browse/CONTROLLER-1764>`_ Karaf 4: odl-mdsal-trace cannot "just" be installed e.g. before odl-netvirt-openstack anymore, as it used to
* `CONTROLLER-1812 <https://jira.opendaylight.org/browse/CONTROLLER-1812>`_ DOMForwardedWriteTransaction infinite loop on cancel after exception
* `CONTROLLER-1641 <https://jira.opendaylight.org/browse/CONTROLLER-1641>`_ Integrate DataTreeCohortActor
* `CONTROLLER-1799 <https://jira.opendaylight.org/browse/CONTROLLER-1799>`_ Archetype should self test during Maven build
* `CONTROLLER-1795 <https://jira.opendaylight.org/browse/CONTROLLER-1795>`_ Migrate away from JavaTestKit
* `CONTROLLER-1809 <https://jira.opendaylight.org/browse/CONTROLLER-1809>`_ Failed to restart all blueprint containers within 5 minutes.
* `CONTROLLER-1811 <https://jira.opendaylight.org/browse/CONTROLLER-1811>`_ controller archetype IT (it.pkg.it.BasicTest) gets stuck locks
* `CONTROLLER-1806 <https://jira.opendaylight.org/browse/CONTROLLER-1806>`_ org.opendaylight.controller:threadpool-config-impl:0.8.0-SNAPSHOT contains javax.annotation classes

Known Issues
------------

* List key known issues with workarounds

  * None

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * The DataChangeListener interface was previously deprecated and has been removed in lieu of
    the DataTreeChangeListener interface.

  * The config subsystem was previously deprecated and has been removed.

  * The controller EntityOwnershipService interface was previously deprecated and has been removed
    in lieu of the mdsal EntityOwnershipService interface.

  * Various other APIs and classes in the controller project that have been long since
    deperecated and no longer used have been removed.

  * The following controller interfaces have been deprecated in lieu of the equivalent interfaces
    in the mdsal project:

    org.opendaylight.controller.md.sal.binding.api.DataBroker
    org.opendaylight.controller.md.sal.binding.api.MountPointService
    org.opendaylight.controller.md.sal.binding.api.NotificationPublishService
    org.opendaylight.controller.md.sal.binding.api.NotificationService
    org.opendaylight.controller.sal.binding.api.RpcConsumerRegistry
    org.opendaylight.controller.sal.binding.api.RpcProviderRegistry
    org.opendaylight.controller.md.sal.dom.api.DOMDataBroker
    org.opendaylight.controller.md.sal.dom.api.DOMMountPointService
    org.opendaylight.controller.md.sal.dom.api.DOMNotificationPublishService
    org.opendaylight.controller.md.sal.dom.api.DOMNotificationService
    org.opendaylight.controller.md.sal.dom.api.DOMRpcProviderService
    org.opendaylight.controller.md.sal.dom.api.DOMRpcService

Standards
=========

* List of standrads implemented and to what extent

  * None

Release Mechanics
=================

* `TSC-136 <https://jira.opendaylight.org/browse/TSC-136>`_
