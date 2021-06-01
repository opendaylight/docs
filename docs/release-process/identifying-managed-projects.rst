*******************************************************
Identifying Managed Projects in an OpenDaylight Version
*******************************************************

What are Managed Projects?
==========================

Managed Projects are simply projects that take part in the :ref:`Managed
Release Process <managed-release>`. Managed Projects are either core components
of OpenDaylight or have demonstrated their maturity and ability to successfully
take part in the Managed Release.

For more information, see the full description of :ref:`Managed Projects
<managed-projects>`.

What is a Managed Distribution?
===============================

Managed Projects are aggregated together by a POM file that defines a Managed
Distribution. The Managed Distribution is the focus of OpenDaylight
development. It's continuously built, tested, packaged and released into
Continuous Delivery pipelines. As prescribed by the Managed Release Process,
Managed Distributions are eventually blessed as formal OpenDaylight releases.

NB: OpenDaylight's Fluorine release actually included Managed and Self-Managed
Projects, but the community is working towards the formal release being exactly
the Managed Distribution, with an option for Self-Managed Projects to release
independently on top of the Managed Distribution later.

Finding the Managed Projects given a Managed Distribution
=========================================================

Given a Managed Distribution (``.tar.gz``, ``.zip``, RPM, Deb), the Managed
Projects that constitute it can be found in the `taglist.log` file in the root
of the archive.

`taglist.log` files are of the format:

.. code::

        <Managed Project> <Git SHA of built commit> <Codename of release>

Finding the Managed Projects Given a Branch
===========================================

To find the current set of Managed Projects in a given OpenDaylight branch,
examine the `integration/distribution/features/repos/index/pom.xml`_ file that defines the Managed Distribution.

.. _integration/distribution/features/repos/index/pom.xml: https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/repos/index/pom.xml
