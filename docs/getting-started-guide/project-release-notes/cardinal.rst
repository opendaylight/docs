========
Cardinal
========

Major Features
==============

odl-cardinal
------------

* **Feature URL:** https://github.com/opendaylight/integration-distribution/blob/master/features3-test/src/main/features/features.xml
* **Feature Description:** This feature installs the odl-cardinal application which provides opendaylight health statistics, karaf and bundle statistics, openflow/netconf specific statistics to a NMS server via SNMP protocol. And it also provides REST service to expose these statistics.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://git.opendaylight.org/gerrit/41204

Documentation
=============

* **User Guide(s):**

  * `ODL-Cardinal User Guide
    <https://logs.opendaylight.org/releng/jenkins092/docs-verify-rtd-nitrogen/60/archives/docs/_build/html/user-guide/cardinal_-opendaylight-monitoring-as-a-service.html>`_

* **Developer Guide(s):**

  * `ODL-Cardinal Developer Guide
    <https://logs.opendaylight.org/releng/jenkins092/docs-verify-rtd-nitrogen/60/archives/docs/_build/html/developer-guide/cardinal_-opendaylight-monitoring-as-a-service.html>`_


Security Considerations
=======================

There are no security issues found.


Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66521>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/cardinal/>`_
* `Other manual testing and QA information
  <https://wiki.opendaylight.org/view/Cardinal:Boron_Feature_Integration_System_Test>`_


Compatiblity
------------

* Any API changes:

  * https://git.opendaylight.org/gerrit/50712
  * https://git.opendaylight.org/gerrit/51145

Bugs Fixed
----------

* `Bug 7617 <https://bugs.opendaylight.org/show_bug.cgi?id=7617>`_

Known Issues
------------

* N/A

End-of-life
===========

* N/A


Standards
=========

* N/A


Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Cardinal:_Carbon_Release_Plan>`_
