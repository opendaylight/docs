==========
Federation
==========

Major Features
==============

federation-with-rabbit
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=federation.git;a=blob;f=features/features-federation/src/main/features/features.xml
* **Feature Description:**  The federation service is a project that
  facilitates the exchange of state between multiple OpenDaylight
  deployments (henceforth 'sites'). These sites may be single node
  deployments or cluster deployments. The 'federation-with-rabbit'
  feature is a specific implementation of the federation service, based
  on Rabbit MQ broker. Federation service currently only supports the
  Rabbit MQ implementation.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** No (tested via NetVirt CSIT)

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If
the document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * :doc:`../../submodules/federation/docs/install-guide/federation-install-guide`

* **Developer Guide(s):**

  * :doc:`../../submodules/federation/docs/developer-guide/federation-developer-guide`

Security Considerations
=======================

* No dedicated port numbers are used.
* Securing of RabbitMQ is beyond the scope of this project but it is
  suggested that standard RabbitMQ security procedures are applied.

Quality Assurance
=================

* This project was not independently tested. Rather it was tested
  indirectly by means of the NetVirt Federation Plugin.

Migration
---------

* Not applicable. Federation is a new project released in the Carbon
  release for the first time.

Compatibility
-------------

* Not applicable. Federation is a new project released in the Carbon
  release for the first time.

Bugs Fixed
----------

* Not applicable. Federation is a new project released in the Carbon
  release for the first time.

Known Issues
------------

* There are no known issues with respect of the usage flow tested via
  the NetVirt Federation Plugin

End-of-life
===========

* Not applicable. Federation is a new project released in the Carbon
  release for the first time.

Standards
=========

* Not applicable

Release Mechanics
=================

* https://wiki.opendaylight.org/view/Federation:Carbon_Release_Plan
