======
MD-SAL
======

Major Features
==============

Oxygen release of MD-SAL has focused on incremental improvements in existing
functionality. Major newsworthy items are:
* Improved length constraint checks in generated code
* Reworked Cluster Singleton service
* DOMSchemaService has received fixes which were delivered only to controller
* Binding V2 implementation has gotten faster, smaller and more feature-complete
* DOMReadWriteTransaction has been introduced to allow migration from controller
* Binding data tree changes adaptation has been corrected
* Potential livelock in DOMForwardedWriteTransaction has been fixed
* Runtime code footprint of Binding V1 has been reduced

odl-mdsal-binding
-----------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/odl-mdsal-binding/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** MDSAL Binding layer, representing mapping of YANG
  modeled data to respective Java Objects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-oxygen/

odl-mdsal-binding2
------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/odl-mdsal-binding2/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** MDSAL Binding v2 layer, representing mapping of YANG
  modeled data to respective Java Objects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes

odl-mdsal-dom
-------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/odl-mdsal-dom/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** MDSAL DOM layer
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No

Documentation
=============

* **Developer Guide(s):**

  * :ref:`MDSAL Developer guide <mdsal_dev_guide>`

  * `MDSAL Binding v2 guide <https://github.com/opendaylight/mdsal/blob/stable/nitrogen/docs/src/main/asciidoc/developer/analysis/binding-v2.adoc>`_

Security Considerations
=======================

* MDSAL libraries are designed to be embedded and not to be a stand-alone
  application so security concerns need to be addressed by the application
  using this library.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.mdsal%3Amdsal-agreggator>`_
  (63.2% line, 53% branch, 60.4% overall coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-oxygen/>`_

Migration
---------

* no additional steps needed for migration

Compatibility
-------------

* Release is compatible with the previous one
* No configuration changes

Bugs Fixed
----------

* `Link of fixed bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20MDSAL%20and%20resolution%20%3D%20Done%20and%20fixVersion%20%3D%20%22Oxygen%22%20>`_

Known Issues
------------

* None

End-of-life
===========

* Users are advised that any API element marked as @deprecated may be removed
  in the next release. Users are advised to follow JavaDoc pointers and migrate
  to replacement APIs.

Standards
=========

* relies on processing according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_ and
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/MD-SAL:Oxygen:Release_Plan>`_
