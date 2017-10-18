======
MD-SAL
======

Major Features
==============

odl-mdsal-binding
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/odl-mdsal-binding/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** MDSAL Binding layer, representing mapping of YANG
  modeled data to respective Java Objects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-nitrogen/

odl-mdsal-binding2
------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/odl-mdsal-binding2/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** MDSAL Binding v2 layer, representing mapping of YANG
  modeled data to respective Java Objects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes

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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=55311>`_
  (61.0% line coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-nitrogen/>`_

Migration
---------

* no additional steps needed for migration

Compatibility
-------------

* Release is compatible with the previous one
* No configuration changes

Bugs Fixed
----------

* `Link of fixed bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&j_top=AND_G&list_id=78839&o1=substring&product=mdsal&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME&v1=Nitrogen>`_
  Additionally, all issues fixed in Carbon SR1 and SR2 release trains have been integrated.

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&f5=cf_target_milestone&j_top=AND_G&list_id=78842&o1=substring&product=mdsal&query_format=advanced&resolution=---&v1=Nitrogen>`_

End-of-life
===========

* Users are advised that any API element marked as @deprecated may be removed
  in the next release. Users are advised to follow JavaDoc pointers and migrate
  to replacement APIs.

* Next release is likely to make incompatible API changes due to changes
  in the next yangtools release.

Standards
=========

* relies on processing according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_ and
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/MD-SAL:Nitrogen:Release_Plan>`_
