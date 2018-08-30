BGP/PCEP protocol library
=========================

Repo name
---------

bgpcep

Description
-----------

BGP/PCEP protocol library is a project aiming to provide Java-based
implementation of `Border Gateway Protocol`_ and `Path Computation
Element Protocol`_.

By enabling the the Controller to utilize more standardized ways of
talking to the underlying network, it can be deployed in a wider variety
of scenarios.

BGP is the core protocol holding together the Internet in its current
shape and form, which is extensible enough to provide functions well
outside of its original purpose. With the advent of `Link State and TE
Information draft`_, BGP can be used to safely distribute IGP
information to entities outside of usual IGP peering. The Controller is
a prime example of a network entity which can benefit from this
information, as it can directly use it as a source of topology
information.

PCEP is a protocol originally designed for offloading optimal path
computation in MPLS-TE networks from the head-end router to a dedicated
accelerator (called Path Computation Element, or PCE) residing on the
control plane. While the original specification called for a
router-driven operation, the recently adopted `Stateful PCE extension`_
aligns the protocol for use by the Controller.

Scope
-----

The scope of this project includes:

-  Definition of a topology model exposed by BGP/LS
-  Definition of a network-wide path programming model exposed by PCEP
-  Implementation of a BGP protocol library, supporting `BGP-4`_,
   `Graceful Restart`_, `Multiprotocol extensions`_, \ `BGP/LS`_,
   `Communities`_, `Extended Communities`_ and \ `4-Byte AS numbers`_
   (NEW speaker only)
-  Implementation of a BGP RIB, allowing for redundant data sources, but
   limited to listener-only functionality
-  Implementation of a PCEP protocol library, supporting `PCEP`_,
   `Objective functions`_, `Diffserv`_, `Stateful extensions`_, `GCO`_,
   `Extensions to PCEP for Route Exclusions`_ and \ `PCE-initiated
   LSPs`_

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Dana Kutenicsova <dkutenic@cisco.com>

-  Robert Varga <rovarga@cisco.com>

-  Tony Tkacik <ttkacik@cisco.com>

-  Jan Medved <jmedved@cisco.com>

Initial Committers
------------------

-  Dana Kutenicsova <dkutenic@cisco.com>

-  Robert Varga <rovarga@cisco.com>

-  Tony Tkacik <ttkacik@cisco.com>

-  Jan Medved <jmedved@cisco.com>

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

-  Inbound Code Review complete with no issues found {Phil Robb:
   7/10/13}

.. _Border Gateway Protocol: https://tools.ietf.org/html/rfc4271
.. _Path Computation Element Protocol: https://tools.ietf.org/html/rfc5440
.. _Link State and TE Information draft: https://tools.ietf.org/html/draft-ietf-idr-ls-distribution-03
.. _Stateful PCE extension: https://tools.ietf.org/html/draft-ietf-pce-stateful-pce-04
.. _BGP-4: https://tools.ietf.org/html/rfc4271
.. _Graceful Restart: https://tools.ietf.org/html/rfc4724
.. _Multiprotocol extensions: https://tools.ietf.org/html/rfc4760
.. _BGP/LS: https://tools.ietf.org/html/draft-ietf-idr-ls-distribution
.. _Communities: https://tools.ietf.org/html/rfc1997
.. _Extended Communities: https://tools.ietf.org/html/rfc4360
.. _4-Byte AS numbers: https://tools.ietf.org/html/rfc6793
.. _PCEP: https://tools.ietf.org/html/rfc5440
.. _Objective functions: https://tools.ietf.org/html/rfc5541
.. _Diffserv: https://tools.ietf.org/html/rfc5455
.. _Stateful extensions: https://tools.ietf.org/html/draft-ietf-pce-stateful-pce
.. _GCO: https://tools.ietf.org/html/rfc5557
.. _Extensions to PCEP for Route Exclusions: https://tools.ietf.org/html/rfc5521
.. _PCE-initiated LSPs: https://tools.ietf.org/html/draft-crabbe-pce-pce-initiated-lsp