======
OpFlex
======

Major Features
==============

This project does not expose any Karaf features.

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * `OpFlex agent-ovs Install Guide <http://docs.opendaylight.org/en/stable-carbon/getting-started-guide/project-specific-guides/opflex.html>`_

* **User Guide(s):**

  * `OpFlex agent-ovs User Guide <http://docs.opendaylight.org/en/stable-carbon/user-guide/opflex-agent-ovs-user-guide.html>`_

* **Developer Guide(s):**

  * `OpFlex libopflex Developer Guide <http://docs.opendaylight.org/en/stable-carbon/developer-guide/opflex-libopflex-developer-guide.html>`_
  * `OpFlex genie Developer Guide <http://docs.opendaylight.org/en/stable-carbon/developer-guide/opflex-genie-developer-guide.html>`_
  * `OpFlex agent-ovs Developer Guide <http://docs.opendaylight.org/en/stable-carbon/developer-guide/opflex-agent-ovs-developer-guide.html>`_

Quality Assurance
=================

* OpFlex projects are tested with extensive unit testing as well as
  Cisco-internal automated testing with ACI.

Migration
---------

* Simply install and restart daemons.

Compatiblity
------------

OpFlex GBP model and configuration files remain backward compatible.

Bugs Fixed
----------

* Flows that are routed are allowed to hairpin out the same interface
* Allow working with newer compilers and development environments.
  * Newest versions of boost remove support for comments in JSON; we
    work around this by stripping comments before doing JSON parsing
    for configuration files
  * Various changes and improvements to enable working with musl and
    alpine linux

Known Issues
------------

* None

End-of-life
===========

* None

Standards
=========

* OpFlex protocol (reference implementation)
