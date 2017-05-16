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

  * :ref:`opflex-agent-ovs-install-guide`

* **User Guide(s):**

  * :ref:`opflex-agent-ovs-user-guide`

* **Developer Guide(s):**

  * :ref:`opflex-libopflex-dev-guide`
  * :ref:`opflex-genie-dev-guide`
  * :ref:`opflex-agent-ovs-dev-guide`

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
* Allow working with newer compilers and development environments

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
