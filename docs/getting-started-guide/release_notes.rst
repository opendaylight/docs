*************
Release Notes
*************

Target Environment
==================

For Execution
-------------

The OpenDaylight Karaf container, OSGi bundles, and Java class files
are portable and should run on any Java 7- or Java 8-compliant JVM to
run. Certain projects and certain features of some projects may have
additional requirements. Those are noted in the project-specific
release notes.

Projects and features which have known additional requirements are:

* TCP-MD5 requires 64-bit Linux
* TSDR has extended requirements for external databases
* Persistence has extended requirements for external databases
* SFC requires addition features for certain configurations
* SXP depends on TCP-MD5 on thus requires 64-bit Linux
* SNBI has requirements for Linux and Docker
* OpFlex requires Linux
* DLUX requires a modern web browser to view the UI
* AAA when using federation has additional requirements for external tools
* VTN has components which require Linux

For Development
---------------

OpenDaylight is written primarily in Java project and primarily uses
Maven as a build tool Consequently the two main requirements to develop
projects within OpenDaylight are:

* A Java 8-compliant JDK
* Maven 3.1.1 or later

Applications and tools built on top of OpenDaylight using it's REST
APIs should have no special requirements beyond whatever is needed to
run the application or tool and make the REST calls.

In some places, OpenDaylight makes use of the Xtend language. While
Maven will download the appropriate tools to build this, additional
plugins may be required for IDE support.

The projects with additional requirements for execution typically have
similar or more extensive additional requirements for development. See
the project-specific release notes for details.

Known Issues and Limitations
============================

Other than as noted in project-specific release notes, we know of the
following limitations:

* Migration from prior OpenDaylight releases to Carbon has not been
  extensively tested. The per-project release notes include migration and
  compatibility information when it is known.
* There are scales beyond which the controller has been unreliable when
  collecting flow statistics from OpenFlow switches. In tests, these
  issues became apparent when managing thousands of OpenFlow
  switches, however this may vary depending on deployment and use cases.

.. _proj_rel_notes:

Project-specific Release Notes
==============================

.. toctree::
   :maxdepth: 1

   project-release-notes/aaa
   project-release-notes/alto
   project-release-notes/bgp-ls-pcep
   project-release-notes/bier
   project-release-notes/cardinal
   project-release-notes/controller
   project-release-notes/didm
   project-release-notes/distribution
   project-release-notes/dluxapps
   project-release-notes/docs
   project-release-notes/eman
   project-release-notes/faas-release-notes
   project-release-notes/federation
   project-release-notes/gbp-release-notes
   project-release-notes/genius
   project-release-notes/infrautils
   project-release-notes/iotdm
   project-release-notes/l2switch
   project-release-notes/lacp
   project-release-notes/lispflowmapping
   project-release-notes/mdsal
   project-release-notes/netconf
   project-release-notes/netide
   project-release-notes/netvirt
   project-release-notes/neutron-northbound
   project-release-notes/nic
   project-release-notes/ocpplugin-release-notes
   project-release-notes/odl-sdni-release-notes
   project-release-notes/odlparent
   project-release-notes/of-config-release-notes
   project-release-notes/openflowjava
   project-release-notes/openflowplugin
   project-release-notes/opflex
   project-release-notes/ovsdb
   project-release-notes/sfc
   project-release-notes/snmp
   project-release-notes/snmp4sdn
   project-release-notes/sxp
   project-release-notes/topology-processing-framework
   project-release-notes/tsdr
   project-release-notes/ttp
   project-release-notes/unimgr
   project-release-notes/usc
   project-release-notes/vbd
   project-release-notes/vtn
   project-release-notes/yangtools

.. Still missing:
.. * PacketCable: https://git.opendaylight.org/gerrit/57218
.. * DLUX
.. * NeXt
