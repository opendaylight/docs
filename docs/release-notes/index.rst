#############
Release Notes
#############

Target Environment
==================

For Execution
-------------

The OpenDaylight Karaf container, OSGi bundles, and Java class files
are portable and should run on any Java 8-compliant JVM. Certain projects and
certain features of some projects may have additional requirements.

For Development
---------------

OpenDaylight is written primarily in Java project and primarily uses
Maven as a build tool Consequently the two main requirements to develop
projects within OpenDaylight are:

* A Java 8-compliant JDK
* Maven 3.5.2 or later

Applications and tools built on top of OpenDaylight using its REST
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

* Migration from prior OpenDaylight releases to |release| has not been
  extensively tested. The per-project release notes include migration and
  compatibility information when it is known.

Project-specific Release Notes
==============================

.. toctree::
   :glob:
   :maxdepth: 1

.. projects/*

.. Service Release Notes
.. =====================
..
.. .. toctree::
..   :glob:
..   :maxdepth: 2
..
..   release-notes-*
