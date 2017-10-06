===
AAA
===

Major Features
==============

For each top-level feature, identify the name, url, description, etc. User-facing features are used directly by end users.

odl-aaa-shiro
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/shiro/features-aaa-shiro/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  ODL Shiro-based AAA implementation
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-nitrogen/

odl-aaa-authn
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Same as odl-aaa-shiro
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-nitrogen/

odl-aaa-cert
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  MD-SAL based encrypted certificate management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-nitrogen/

odl-aaa-cli
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Basic karaf CLI commands for interacting with AAA
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-nitrogen/


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * :ref:`aaa-user-guide`

* **Developer Guide(s):**

  * :ref:`aaa-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  No.

* Other security issues?

  N/A.

Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-sonar/>`_ (54% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/aaa/>`_

Migration
---------

* Bug 7793:  shiro.ini is no longer exposed in ODL Nitrogen.

shiro.ini is no longer exposed in ODL Nitrogen.  A more robust mechanism is
provided to configure AAA in ODL Nitrogen based on the clustered-app-config
framework.  A migration utility is provided and may be run by invoking the
following:

.. code-block:: bash

    python bin/upgrade/convert-shiro-ini-to-rest-payload <filename>

An XML payload is output to stdout, which can be used as a PUT payload to the
aaa-app-config REST endpoint to maintain configuration from a previous version.
An alternative is to write the resulting payload to the initial application
config:

.. code-block:: bash

    python bin/upgrade/convert-shiro-ini-to-rest-payload <filename> > etc/opendaylight/datastore/initial/config/aaa-app-config.xml

For Example:

.. code-block:: bash

    python bin/upgrade/convert-shiro-ini-to-rest-payload etc/shiro.ini > etc/opendaylight/datastore/initial/config/aaa-app-config.xml


Compatibility
-------------

* Is this release compatible with the previous release?

  Yes.

* Any API changes?

  No.

* Any configuration changes?

  Some CLI commands were modified for security and ease of use purposes.  Nothing else.

Bugs Fixed
----------

* `6772 <https://bugs.opendaylight.org/show_bug.cgi?id=6772>`_ When it is known some features have not activated fully, do not return 401
* `8717 <https://bugs.opendaylight.org/show_bug.cgi?id=8717>`_ deprecate the existing mdsal AAA datastore impl
* `8572 <https://bugs.opendaylight.org/show_bug.cgi?id=8572>`_ remove SecureBlockingQueue which is unused
* `8724 <https://bugs.opendaylight.org/show_bug.cgi?id=8724>`_ clean AAA features

Known Issues
------------

* List key known issues with workarounds

* `5838 <https://bugs.opendaylight.org/show_bug.cgi?id=5838>`_ token authentication fails intermittently

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?component=General&list_id=78831&product=aaa&resolution=--->`_

End-of-life
===========

* N/A

Standards
=========

* LDAP, JDBC, ActiveDirectory (less tested)

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/AAA:Nitrogen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  None.
