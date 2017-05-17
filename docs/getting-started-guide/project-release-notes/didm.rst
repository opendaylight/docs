============
DIDM
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-didm-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=didm.git;a=blob;f=features/src/main/features/features.xml;hb=HEAD
* **Feature Description:** Device Identification and device driver framework
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA

odl-didm-ovs-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=didm.git;a=blob;f=vendor/ovs/features/src/main/features/features.xml;hb=HEAD
* **Feature Description:**  DIDM OVS reference driver
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA

odl-didm-ovs-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=didm.git;a=blob;f=vendor/hp/features/src/main/features/features.xml;hb=HEAD
* **Feature Description:**  DIDM HP device identification and driver management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA



Documentation
=============

* **User Guide(s):**

  * `DIDM-user-guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/didm-user-guide.rst;hb=HEAD>`_

* **Developer Guide(s):**

  * `DIDM-developer-guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/didm-developer-guide.rst;hb=HEAD>`_

Security Considerations
=======================

* There are no security issue found.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.didm%3Adidm-aggregator>`_ 
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/didm/>`_
* Testing is done manually.

Migration
---------

* No changes has been done from the last release.

Compatiblity
------------

* Release is compatible with previous release.
* No API changes has been done.
* No configuration changes has been done.

Bugs Fixed
----------

* No bugfix has been done.

Known Issues
------------

* Initial release for device driver support. The release only supports device driver feature for HP 3800.
* RPC "adjustFlow" is not adjusting the flows as expected for HP switch platform.

End-of-life
===========

* No changes has been done from previous supported API.

Standards
=========

* Flow Objective API

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/DIDM:Carbon>`_
