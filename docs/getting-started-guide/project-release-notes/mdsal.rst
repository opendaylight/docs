============
MD-SAL
============

Major Features
==============

odl-mdsal-binding
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/features-mdsal/src/main/features/features.xml;h=d41e7fd1e56cfe91934a5c077719ce4cb438b3ef;hb=refs/heads/stable/carbon
* **Feature Description:** MDSAL Binding layer, representing mapping of YANG modeled data to respective Java Objects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-carbon/

odl-mdsal-binding2
------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=blob;f=common/features/features-mdsal/src/main/features/features.xml;h=d41e7fd1e56cfe91934a5c077719ce4cb438b3ef;hb=refs/heads/stable/carbon
* **Feature Description:** MDSAL Binding v2 layer, representing mapping of YANG modeled data to respective Java Objects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes

Documentation
=============

* **Developer Guide(s):**

  * `MDSAL Developer guide https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=tree;f=docs/src/main/asciidoc/developer;h=9715f3e4738ea1dcf4615f1444b86c93f83037dd;hb=refs/heads/stable/carbon`_

  * `MDSAL Binding2 guide https://git.opendaylight.org/gerrit/gitweb?p=mdsal.git;a=tree;f=binding2/mdsal-binding2-spec/src/site/asciidoc;h=83cdadb2c111dd2ae644c27ed604019a6d0a4738;hb=refs/heads/stable/carbon`_

Security Considerations
=======================

* MDSAL libraries are designed to be embedded and not to be a stand-alone application so security concerns need to be addressed by the application using this library.

Quality Assurance
=================

* `Link to Sonar Report https://sonar.opendaylight.org/overview?id=55311`_ (70.6% line coverage)
* `Link to CSIT Jobs https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-carbon/`_

Migration
---------

* no additional steps needed for migration

Compatiblity
------------

* Release is compatible with the previous one
* No configuraiton changes

Bugs Fixed
----------

* `Link of fixed bugs https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&j_top=AND_G&list_id=78839&o1=substring&product=mdsal&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME&v1=Carbon`_

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&f5=cf_target_milestone&j_top=AND_G&list_id=78842&o1=substring&product=mdsal&query_format=advanced&resolution=---&v1=Carbon`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  none

Standards
=========

* relies on processing according to `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_ and `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_.

Release Mechanics
=================

* `Link to release plan https://wiki.opendaylight.org/view/MD-SAL:Carbon:Release_Plan`_