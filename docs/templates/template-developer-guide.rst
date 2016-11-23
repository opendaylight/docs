#########################
<Feature> Developer Guide
#########################

Overview
========

Provide an overview of the feature, what it logical functionality it
provides and why you might use it as a developer. To be clear the target
audience for this guide is a developer who will be *using* the feature
to build something separate, but *not* somebody who will be developing
code for this feature itself.

.. note:: More so than with user guides, the guide may cover more than
          one feature. If that is the case, be sure to list all of the
          features this covers.

<Feature> Architecture
======================

Provide information about feature components and how they work together.
Also include information about how the feature integrates with
OpenDaylight. An architecture diagram could help. This may be the same
as the diagram used in the user guide, but it should likely be less
abstract and provide more information that would be applicable to a
developer.

Key APIs and Interfaces
=======================

Document the key things a user would want to use. For some features,
there will only be one logical grouping of APIs. For others there may be
more than one grouping.

Assuming the API is MD-SAL- and YANG-based, the APIs will be available
both via RESTCONF and via Java APIs. Giving a few examples using each is
likely a good idea.

API Group 1
-----------

Provide a description of what the API does and some examples of how to
use it.

API Group 2
-----------

Provide a description of what the API does and some examples of how to
use it.

API Reference Documentation
===========================

Provide links to JavaDoc, REST API documentation, etc.
