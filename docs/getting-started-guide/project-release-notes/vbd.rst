===============================
Honeycomb Virtual Bridge Domain
===============================

Major Features
==============

odl-vbd
-------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=honeycomb/vbd.git;a=blob;f=features/odl-vbd/src/main/feature/feature.xml;h=37a666153982e4efa38a37ca0b971be5d5cbdcd6;hb=refs/heads/stable/nitrogen
* **Feature Description:**  This feature provides models to configure Virtual Bridge Domains on VPP.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-vbd-ui
----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=honeycomb/vbd.git;a=tree;f=features/odl-vbd-ui;h=a6172d7fb3d2c1930b0a87213b7043f58a711f60;hb=refs/heads/stable/nitrogen
* **Feature Description:**  This feature provides the GUI for VBD.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A


Documentation
=============

* `Wiki <https://wiki.opendaylight.org/view/Honeycomb/VBD>`_
* `VBD API <https://wiki.opendaylight.org/view/Honeycomb/VBD/API>`_

Security Considerations
=======================

* N/A

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/overview?id=68028>`_ (0% - no coverage results available)
* VBD project is tested within `FastDataStacks (FDS) <https://wiki.opnfv.org/display/fds/FastDataStacks+Home>`_ testing suite, where severeal automated
  tests are performed. More information about FDS testing can be found here:
  `FDS testing <https://wiki.opnfv.org/display/fds/FDS+Testing>`_ and test
  results are available here: `FDS test results <http://testresults.opnfv.org/reporting/master/functest/status-apex.html>`_
* FDS automated tests perform series of functests where the whole stack is
  beeing tested (Openstack/ODL (GBP,VBD)/HC/VPP).

Migration
---------

* Please use VPP 17.04 stable.

Compatibility
-------------

* Not compatible with previous VPP 17.01 or older stable versions.

Bugs Fixed
----------

* N/A


Known Issues
------------

* Due to yang updates for keeping VPP Rendering compatible with the latest
  stable for VPP, 17.04, we are not going to be compatible with previous stable
  VPPs. This, on the other hand, comes with a lot of augmentations of features.

End-of-life
===========

* N/A

Standards
=========

* N/A

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Honeycomb/VBD/Nitrogen/Release_Plan>`_
* no major shifts from official release plan
