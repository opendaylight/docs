==========
Controller
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

* Is is possible migrate from the previous release? If so, how?

  Yes, no specific steps needed unless prior updates to config subsystem modules
  were made via the controller-config yang-ext mount in which case the
  etc/opendaylight/current/controller.currentconfig.xml file must be manually
  edited to remove the following elements corresponding to config yang modules
  that were removed:

    * Remove the <data-broker> element from the <module> element with
      <name> binding-broker-impl
    * Remove the <module> element with <name> inmemory-binding-data-broker
    * Remove the <service> element with <name> binding-data-broker
    * Remove <capability>urn:opendaylight:params:xml:ns:yang:controller:threadpool?module=threadpool&amp;revision=2013-04-09</capability> from <required-capabilities>

  Since the config subsystem is deprecated, it is recommended to migrate any custom
  configuration additions and/or changes contained in controller.currentconfig.xml
  and remove the file.

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

  * The XSQL component packaged in odl-mdsal-xsql has been removed.

  * The DataProviderService and DataBrokerService APIs and the corresponding
    implementations that were previously deprecated after the Hydrogen release
    have been removed.

  * The following config subsystem yang modules have been removed:

    * threadpool
    * threadpool-impl-fixed
    * threadpool-impl-flexible
    * threadpool-impl-scheduled
    * threadpool-impl

Standards
=========

* List of standards implemented and to what extent

  * None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Controller:Carbon:Release_Plan>`_
