Name
----

Opendaylight Openflow Protocol Library
======================================

Repository Name
---------------

openflowjava

Description
-----------

The Openflow Protocol Library will be an implementation of Openflow
Protocol as defined in `Openflow Switch Specification v1.3`_ and later
versions.

The library is designed to be extensible from third-party bundles in
order to support vendor extensions and should serve as a basis for
Openflow Southbound Plugin for Controller.

Motivation
----------

We believe that support of Openflow 1.3.x Protocol and later versions in
Java is critical for deployment of Opendaylight Controller and other
Java-based SDN applications in environments, where Openflow support is
necessary.

Scope
-----

The Scope of Opendaylight Openflow Protocol Library includes:

-  Implementation of Openflow Wire Protocol 0x04 in Java

   -  Support for TCP / TLS auxiliary connections
   -  TLS support

-  Support for extensibility from third-party bundles (vendor actions,
   matches etc.)

The controller plugin is not in the scope of the project.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Daniel Bartos <daniel.bartos@pantheon.sk>
-  Adam Brcek <adam.brcek@pantheon.sk>
-  Michal Polkorab <michal.polkorab@pantheon.sk>
-  Timotej Kubas <timotej.kubas@pantheon.sk>

Initial Committers
------------------

-  Daniel Bartos <daniel.bartos@pantheon.sk>
-  Adam Brcek <adam.brcek@pantheon.sk>

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

Meets Board Policy (including IPR)
----------------------------------

-  No Inbound Code Review required for this project. No substantial
   contribution of 3rd party code is present {Phil Robb: 07-12-13}

Release Plan
------------

Under the link below you can find the project candidate Release Plan:

`Openflow Library Candidate Release Plan`_

.. _Openflow Switch Specification v1.3: https://www.opennetworking.org/images/stories/downloads/specification/openflow-spec-v1.3.0.pdf
.. _Openflow Library Candidate Release Plan: https://wiki.opendaylight.org/images/3/33/OF_Library_Candidate_Release_Plan.xlsx