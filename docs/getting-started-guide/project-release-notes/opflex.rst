======
OpFlex
======

Major Features
==============

OpFlex Agent
------------

OpFlex Agent provides support for local enforcement of group-based
policy model synced using the OpFlex protocol using an Open
vSwitch-based bridge.  Supported renderer currently works with Cisco
ACI.

libopflex
---------

libopflex provides an implementation of the OpFlex protocol along with
an in-memory managed object database for managing OpFlex data.

genie
-----

Genie provides a modeling language and code generator for producing
data models that work with libopflex.  Genie also contains the
group-based policy model that is used by the OpFlex Agent.


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

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No.

* Other security issues?

  * None.

Quality Assurance
=================

* OpFlex projects are tested with extensive unit testing as well as
  Cisco-internal automated testing with ACI.
* Unit tests run as part of `regular build <https://jenkins.opendaylight.org/releng/view/opflex/job/opflex-merge-nitrogen/26/>`_

Migration
---------

* Simply install and restart daemons.

Compatibility
-------------

OpFlex GBP model and configuration files remain backward compatible.

Changes since previous release
------------------------------

* Advertise external services on their interface with ARP/ND packets
  when the interface comes up.
* Always allow ARP and ND packets without contracts
* Improved robustness of agent shutdown and OpenFlow socket
  reconnections
* Clean up endpoint-related OpenFlow rules when EPG is removed with
  endpoint remaining

Known Issues
------------

* None

End-of-life
===========

* None

Standards
=========

* `OpFlex protocol <https://tools.ietf.org/html/draft-smith-opflex-03>`_ (reference implementation)
