============
Openflowjava
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-openflowjava-all
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowjava.git;a=blob;f=features/features-openflowjava/src/main/features/features.xml;h=f1b58ba66493ccbfd496cb9d4f072cc8398340c3;hb=refs/heads/stable/carbon
* **Feature Description:**  This is a all-starting feature that contains all exposed local features (discouraged)
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** tested by openflowplugin CSIT

odl-openflowjava-protocol
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowjava.git;a=blob;f=features/features-openflowjava/src/main/features/features.xml;h=f1b58ba66493ccbfd496cb9d4f072cc8398340c3;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature exposes SwitchConnectionProvider for building openflow connections
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** tested by openflowplugin CSIT

Documentation
=============

* **User Guide(s):**

  * `user guide https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Startup_Guide`_

* **Developer Guide(s):**

  * `developer guide https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Documentation`_

Security Considerations
=======================

* openflowjava listens on given TCP/UDP ports and propagates messages to consumer (by default TCP:6633 and TCP:6653)
* openflow messages can inflict high load on consumer which needs to be handled there

Quality Assurance
=================

* `Link to Sonar Report https://sonar.opendaylight.org/overview?id=11724`_ (85.8% line coverage)
* `Link to CSIT Jobs`_ supplied by openflowplugin CSIT

Migration
---------

* no additional migration steps needed

Compatiblity
------------

* release is compatible with the previous release
* no API changes
* no configuration changes

Bugs Fixed
----------

* `List of bugs fixed since the previous release: https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&f5=cf_target_milestone&j_top=AND_G&list_id=78956&o1=substring&product=openflowjava&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME&v1=Carbon`_

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&f5=cf_target_milestone&f6=cf_target_milestone&j_top=AND_G&list_id=78961&o1=substring&product=openflowjava&query_format=advanced&resolution=---&v1=Carbon`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  none

Standards
=========

* based on openflow switch specification 1.3.2 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>

Release Mechanics
=================

* `Link to release plan https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Carbon_Release_Plan`_
