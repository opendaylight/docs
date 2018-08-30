Name
----

YANG Tools
==========

Repo Name
---------

yangtools

Description
-----------

YANG Tools is a infrastructure project aiming to develop necessary
tooling and libraries providing support of `NETCONF`_ and `YANG`_ for
Java (JVM-language based) projects and applications, such as Model
Driven SAL for Controller (which uses YANG as it's modeling language)
and Netconf / OFConfig plugins.

Motivatation
------------

We believe that generic functionality related to the YANG should not be
a part of Controller project, but should live in separate project and
could be reused by various projects and parties without directly
depending on Controller project.

Scope
-----

The scope of YANG Tools includes:

-  Parser of YANG files
-  Java meta-model for YANG
-  Java binding for YANG
-  Maven plugin for processing YANG files
-  Infrastructure for code generators based on YANG
-  Validation of instance data (XML) based on YANG to RelaxNG mapping -
   `RFC6110`_
-  Proof-of-concept, research and support for new YANG extensions, which
   are meant to be reused by other projects.
-  IDE related tools to assist in writing, using and developing YANG
   models
-  Libraries and supporting functionality for `YANG API`_ (REST APIs
   defined by the YANG model).

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Tony Tkacik <ttkacik@cisco.com>
-  Robert Varga <rovarga@cisco.com>
-  Lukas Sedlak <lsedlak@cisco.com>
-  Martin Vitez <mvitez@cisco.com>
-  Jan Medved <jmedved@cisco.com>

Initial Committers
------------------

-  Tony Tkacik <ttkacik@cisco.com>
-  Robert Varga <rovarga@cisco.com>
-  Lukas Sedlak <lsedlak@cisco.com>
-  Martin Vitez <mvitez@cisco.com>
-  Jan Medved<jmedved@cisco.com>

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

-  No Inbound Code Review required for this project. No substantial
   contribution of 3rd party code is present {Phil Robb: 07-10-13}

.. _NETCONF: http://tools.ietf.org/html/rfc6242
.. _YANG: http://tools.ietf.org/html/rfc6020
.. _RFC6110: http://tools.ietf.org/html/rfc6110
.. _YANG API: http://tools.ietf.org/html/draft-bierman-netconf-yang-api-01