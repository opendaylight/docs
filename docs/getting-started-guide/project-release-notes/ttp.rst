===================
Table Type Patterns
===================

Major Features
==============

odl-ttp-model
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ttp.git;a=blob;f=features/features-ttp/src/main/features/features.xml;hb=stable/carbon
* **Feature Description:**  Provides a YANG model for describing
  `ONF TTP 1.0 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/OpenFlow%20Table%20Type%20Patterns%20v1.0.pdf>`
  Table Type Patterns (TTPs) in JSON as well as a database of TTPs and an
  augmentation adding supported and active TTPs on OpenFlow nodes.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** None.

TTP CLI Tools
-------------

* **Feature URL:** The Carbon executable jar can be found here: https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/ttp/parser/0.4.0-Carbon/parser-0.4.0-Carbon-jar-with-dependencies.jar
* **Feature Description:**  Provides stand-alone command line tools to validate
  and interact with TTPs in XML or JSON.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** None.

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * :ref:`ttp_cli_tools_user_guide`

* **Developer Guide(s):**

  * :ref:`ttp_cli_tools_dev_guide`
  * :ref:`ttp_model_dev_guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No.

* Other security issues?

  * None.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.ttp%3Attp-parent>`_ (43.3% Test Coverage)
* No CSIT testing.
* There was minimal manual testing in Carbon, but also there were no changes
  beyond keeping up-to-date with changes in upstream projects. Unit tests cover
  the basics of the model.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  While it should be possible to export all TTP-related information by doing
  RESTCONF GETs and then import it by doing RESTCONF PUTs after the fact, this
  has not been tested and isn't officially supported.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes. There have been no code changes except to tolerate changes in upstream
  projects.

* Any API changes?

  No. No changes in models or APIs.

* Any configuration changes?

  No. The TTP project has no configuration.

Bugs Fixed
----------

None fixed.

Known Issues
------------

The TTP YANG model does not match the ONF TTP JSON precisely. Exact details are
documented in the `TTP model YANG
<https://git.opendaylight.org/gerrit/gitweb?p=ttp.git;a=blob;f=ttp-model/src/main/yang/ttp.yang;hb=stable/carbon>`_
file.

`Open Bugs <https://bugs.opendaylight.org/buglist.cgi?component=General&list_id=79056&product=ttp&resolution=--->`_

End-of-life
===========

None.

Standards
=========

`ONF TTP 1.0
<https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/OpenFlow%20Table%20Type%20Patterns%20v1.0.pdf>`_

Release Mechanics
=================

* `Carbon Table Type Patterns Release Plan
  <https://wiki.opendaylight.org/view/Table_Type_Patterns/Carbon/Release_Plan>`_

  * Dropped all new features including TTP 1.1 support, Dynamic Mapping, and auto-loading of TTP repositories.
