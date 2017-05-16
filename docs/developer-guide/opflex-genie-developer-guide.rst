.. _opflex-genie-dev-guide:

OpFlex genie Developer Guide
============================

Overview
--------

Genie is a tool for code generation from a model. It supports generating
C++ and Java code. C++ can be generated suitable for use with libopflex.
C++ and Java can be generated as a plain set of objects.

Group-based Policy Model
------------------------

The group-based policy model is included with the genie tool and can be
found under the MODEL directory. By running mvn exec:java, libmodelgbp
will be generated as a library project that, when built and installed,
will work with libopflex. This model is used by the OVS agent.

API Reference Documentation
---------------------------

Complete API documentation for the generated libmodelgbp can be found
in doc/html/index.html in any build
