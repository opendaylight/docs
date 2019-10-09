=====================
Neon Platform Upgrade
=====================

This document describes the steps to help users upgrade to the 
Neon planned platform. For more details on this Managed 
Release Integrated (MRI) project, refer to the following: 
https://git.opendaylight.org/gerrit/#/q/topic:neon-mri. 

Contents
--------

Version Bumps
-------------
To bump the version, first replace the project's odlparent
version from 3.1.3 to 4.0.2 (for example, use bump-odl-version:
"bump-odl-version odlparent 3.1.3 4.0.2"). There should not be 
any reference to the org.opendaylight.odlparent*, except for 4.0.2.

In addition, replace the project's direct yangtools version 
references from 2.0.10 to 2.1.1. There should not have any
references to org.opendaylight.yangtools*, except for 2.1.1. 

Finally, replace the project's MDSAL versions from 0.14.0-SNAPSHOT
to 3.0.0 (for example, using "rpl -R 0.14.0-SNAPSHOT 3.0.0.") and
2.6.0-SNAPSHOT to 3.0.0 (for example, using "rpl -R 2.6.0-SNAPSHOT
3.0.0."). There should not be any references to org.opendaylight.mdsal*, 
except for 3.0.0.

Install Dependent Projects
----------------------------------

To locally install a dependent project, pull and install the 
respective neon-mri changes for all dependent projects. At the 
minimum, pull and install the controller, AAA and NETCONF. 

Perform the following to save time when locally installing the dependencies: 

* Use quick install ("mvn -Pq clean install") 
* If previously installed, go offline and/or use no-snapshot-updates 
  (for example, "mvn -Pq -o -nsu clean install")

Upgrading the ODL Parent
========================
Upgrading to the ODL Parent 4 involves the following changes. For fully-
detailed ODL parent release notes, refer to the following link: 
ODL Parent Release Notes _`<https://github.com/opendaylight/odlparent/blob/v4.0.0/NEWS.rst >`_ 
