===============================
Honeycomb Virtual Bridge Domain
===============================

Major Features
==============

odl-vbd
-------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=honeycomb/vbd.git;a=blob;f=features/vbd-features/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature provides models to configure Virtual Bridge Domains on VPP.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-vbd-ui
----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=honeycomb/vbd.git;a=blob;f=features/vbd-features/src/main/features/features.xml;hb=refs/heads/stable/carbon
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
  results are available here: `FDS test results <http://testresults.opnfv.org/reporting/functest/release/danube/index-status-apex.html>`_
* FDS automated tests perform series of functests where the whole stack is
  beeing tested (Openstack/ODL (GBP,VBD)/HC/VPP).

Migration
---------

* Please upgrade to VPP 17.04 stable.

Compatibility
-------------

* Not compatible with previous VPP 17.01 or older stable versions.

Bugs Fixed
----------

* `Bug 6077 <https://bugs.opendaylight.org/show_bug.cgi?id=6077>`_	RESOLVED	Bridge domain is not created when topology and node are created at the same time
* `Bug 6078 <https://bugs.opendaylight.org/show_bug.cgi?id=6078>`_	RESOLVED	BVI is set to true and should be false when creating VXLAN tunnel
* `Bug 6101 <https://bugs.opendaylight.org/show_bug.cgi?id=6101>`_	RESOLVED	Error when creating VLAN flood domain
* `Bug 6104 <https://bugs.opendaylight.org/show_bug.cgi?id=6104>`_	RESOLVED	Ip addresses nullPointerException
* `Bug 6105 <https://bugs.opendaylight.org/show_bug.cgi?id=6105>`_	RESOLVED	Error when removing nodes from bridge domain
* `Bug 6241 <https://bugs.opendaylight.org/show_bug.cgi?id=6241>`_	RESOLVED	Split horizon group is not set for VXLAN tunnel interfaces
* `Bug 6285 <https://bugs.opendaylight.org/show_bug.cgi?id=6285>`_	RESOLVED	HONEYCOMB/VBD Missing from Distribution Feature Index
* `Bug 6591 <https://bugs.opendaylight.org/show_bug.cgi?id=6591>`_	RESOLVED	VXLAN tunnels are not created correctly
* `Bug 7117 <https://bugs.opendaylight.org/show_bug.cgi?id=7117>`_	RESOLVED	Cannot add Virtual Bridge Domains in DLUX
* `Bug 7118 <https://bugs.opendaylight.org/show_bug.cgi?id=7118>`_	RESOLVED	Cannot remove VPP from inventory in DLUX
* `Bug 7148 <https://bugs.opendaylight.org/show_bug.cgi?id=7148>`_	RESOLVED	VBD Carbon Autorelease Build Failure
* `Bug 7655 <https://bugs.opendaylight.org/show_bug.cgi?id=7655>`_	RESOLVED	Karaf 4 migration: provide Karaf 4 honeycomb-vbd features
* `Bug 8009 <https://bugs.opendaylight.org/show_bug.cgi?id=8009>`_	RESOLVED	Mismatched VXLAN tunnel endpoint addresses
* `Bug 8167 <https://bugs.opendaylight.org/show_bug.cgi?id=8167>`_	RESOLVED	Default startup configuration file not created
* `Bug 8172 <https://bugs.opendaylight.org/show_bug.cgi?id=8172>`_	RESOLVED	VBD missing yangs for configuring LISP in VPP
* `Bug 8173 <https://bugs.opendaylight.org/show_bug.cgi?id=8173>`_	RESOLVED	Mismatch of v3po yangs between vbd and hc2vpp
* `Bug 8354 <https://bugs.opendaylight.org/show_bug.cgi?id=8354>`_	RESOLVED	Feature installs fails if installed in a particular order


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

* `Release plan <https://wiki.opendaylight.org/view/Honeycomb/VBD/Carbon/Release_Plan>`_
* no major shifts from official release plan
