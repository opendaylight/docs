.. _ttp_cli_tools_user_guide:

TTP CLI Tools User Guide
========================

Overview
--------

Table Type Patterns are a specification developed by the `Open
Networking Foundation <https://www.opennetworking.org/>`__ to enable the
description and negotiation of subsets of the OpenFlow protocol. This is
particularly useful for hardware switches that support OpenFlow as it
enables the to describe what features they do (and thus also what
features they do not) support. More details can be found in the full
specification listed on the `OpenFlow specifications
page <https://www.opennetworking.org/sdn-resources/onf-specifications/openflow>`__.

TTP CLI Tools Architecture
--------------------------

The TTP CLI Tools use the TTP Model and the YANG Tools/RESTCONF codecs
to translate between the Data Transfer Objects (DTOs) and JSON/XML.

