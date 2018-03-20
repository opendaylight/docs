========
JSON-RPC
========

Major Features
==============

jsonrpc
------------

This is the first official release of the JSON RPC extension. It
provides JSON RPC client support as well as support for one
transport - Zero MQ.

Documentation
=============

* **User Guide(s):**

  * :ref:`jsonrpc-user-guide.rst`

* **Developer Guide(s):**

  * :ref:`jsonrpc`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Configurable Zero MQ listener endpoint - by default disabled.

* Other security issues?

  * None.

Quality Assurance
=================

* JSON RPC is being tested extensively as a part of ongoing work
  on integrating it with OpenSwitch and other projects.
* Unit tests

Migration
---------

* Simply install and restart daemons.

Compatibility
-------------

* N/A

Bugs Fixed
----------

* N/A - Initial release


Known Issues
------------

* None

End-of-life
===========

* None

Standards
=========

* `Yang Modelled JSON RPC draft <https://tools.ietf.org/html/draft-yang-json-rpc-02>`_ (reference implementation)
