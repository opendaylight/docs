#############
Release Notes
#############

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

* Migration from prior OpenDaylight releases to Nitrogen has not been
  extensively tested. The per-project release notes include migration and
  compatibility information when it is known.
* There are scales beyond which the controller has been unreliable when
  collecting flow statistics from OpenFlow switches. In tests, these
  issues became apparent when managing thousands of OpenFlow
  switches, however this may vary depending on deployment and use cases.

Project-specific Release Notes
==============================

.. toctree::
   :maxdepth: 1

   projects/aaa
   projects/alto
   projects/bgp-ls-pcep
   projects/bier
   projects/cardinal
   projects/controller
   projects/daexim
   projects/didm
   projects/distribution
   projects/dlux
   projects/dluxapps
   projects/eman
   projects/faas
   projects/gbp
   projects/genius
   projects/infrautils
   projects/iotdm
   projects/l2switch
   projects/lispflowmapping
   projects/mdsal
   projects/nemo
   projects/netconf
   projects/netide
   projects/netvirt
   projects/neutron-northbound
   projects/nic
   projects/ocpplugin
   projects/odlparent
   projects/odl-sdni.rst
   projects/of-config
   projects/openflowjava
   projects/openflowplugin
   projects/opflex
   projects/ovsdb
   projects/packetcable
   projects/sfc
   projects/snmp
   projects/snmp4sdn
   projects/sxp
   projects/topology-processing-framework
   projects/tsdr
   projects/ttp
   projects/unimgr
   projects/usc
   projects/vbd
   projects/vtn
   projects/yangtools
