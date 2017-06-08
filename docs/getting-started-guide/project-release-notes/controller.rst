==========
Controller
==========

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

* Is is possible migrate from the previous release? If so, how?

  * There are no issues with migration from Boron to Carbon.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * Preview for Distributed Datastore Tell-Based protocol. This is enabled using etc/org.opendaylight.controller.cluster.datastore.cfg's
    use-tell-based-protocol knob and should eliminate most sources of AskTimeouts.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Bugs Fixed <https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-9&chfieldto=2017-05-25&list_id=78854&product=controller&query_format=advanced&resolution=FIXED>`_

Known Issues
------------

* List key known issues with workarounds

  * None

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&chfieldfrom=2016-08-9&chfieldto=2017-05-25&list_id=78855&product=controller&query_format=advanced>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * The XSQL component packaged in odl-mdsal-xsql has been deprecated and will be removed in
    the next release.

  * The following API elements are deprecated, pending future removal:

    * org.opendaylight.controller.md.sal.binding.api.ClusteredDataChangeListener
    * org.opendaylight.controller.md.sal.binding.api.DataChangeListener
    * org.opendaylight.controller.sal.binding.api.AbstractBindingAwareConsumer
    * org.opendaylight.controller.sal.binding.api.AbstractBindingAwareProvider
    * org.opendaylight.controller.sal.binding.api.data.DataBrokerService
    * org.opendaylight.controller.sal.binding.api.data.DataChangeListener
    * org.opendaylight.controller.sal.binding.api.data.DataModificationTransaction
    * org.opendaylight.controller.sal.binding.api.data.DataProviderService
    * org.opendaylight.controller.sal.binding.api.data.SynchronizedTransaction
    * org.opendaylight.controller.sal.binding.api.NotificationListener
    * org.opendaylight.controller.sal.binding.api.NotificationProviderService
    * org.opendaylight.controller.sal.binding.api.NotificationService
    * org.opendaylight.controller.sal.common.util.RpcErrors.java
    * org.opendaylight.controller.sal.common.util.Rpcs.java
    * org.opendaylight.controller.sal.core.api.model.SchemaService

Standards
=========

* List of standards implemented and to what extent

  * None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Controller:Carbon:Release_Plan>`_
