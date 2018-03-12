.. _pcep-user-guide-overview:

Overview
========
This section provides a high-level overview of the PCEP, SDN use-cases and OpenDaylight implementation.

.. contents:: Contents
   :depth: 2
   :local:

Path Computation Element Communication Protocol
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Path Computation Element (PCE) Communication Protocol (PCEP) is used for communication between a Path Computation Client (PCC) and a PCE in context of MPLS and GMPLS Traffic Engineering (TE) Label Switched Paths (LSPs).
This interaction include path computation requests and computation replies.
The PCE operates on a network graph, built from the (Traffic Engineering Database) TED, in order to compute paths based on the path computation request issued by the PCC.
The path computation request includes the source and destination of the path and set of constrains to be applied during the computation.
The PCE response contains the computed path or the computation failure reason.
The PCEP operates on top the TCP, which provides reliable communication.

.. figure:: ./images/pcep.png
   :align: center
   :alt: PCEP

   PCE-based architecture.

PCEP in SDN
^^^^^^^^^^^
The Path Computation Element perfectly fits into the centralized SDN controller architecture.
The PCE's knowledge of the availability of network resources (i.e. TED) and active LSPs awareness (LSP-DB) allows to perform automated application-driven network operations:

* LSP Re-optimization
* Resource defragmentation
* Link failure restoration
* Auto-bandwidth adjustment
* Bandwidth scheduling
* Shared Risk Link Group (SRLG) diversity maintenance

OpenDaylight PCEP plugin
^^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight PCEP plugin provides all basic service units necessary to build-up a PCE-based controller.
In addition, it offers LSP management functionality for Active Stateful PCE - the cornerstone for majority of PCE-enabled SDN solutions.
It consists of the following components:

* Protocol library
* PCEP session handling
* Stateful PCE LSP-DB
* Active Stateful PCE LSP Operations

.. figure:: ./images/pcep-plugin.png
   :align: center
   :alt: PCEP plugin

   OpenDaylight PCEP plugin overview.

.. important:: The PCEP plugin does not provide path computational functionality and does not build TED.
