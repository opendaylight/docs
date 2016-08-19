YANG-PUSH
=========

This section describes how to use the YANG-PUSH feature in OpenDaylight
and contains contains configuration, administration, and management
sections for the feature.

Overview
--------

YANG PUBSUB project allows applications to place subscriptions upon
targeted subtrees of YANG datastores residing on remote devices. Changes
in YANG objects within the remote subtree can be pushed to an
OpenDaylight MD-SAL and to the application as specified without a
requiring the controller to make a continuous set of fetch requests.

YANG-PUSH capabilities available
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This module contains the base code which embodies the intent of
YANG-PUSH requirements for subscription as defined in
{i2rs-pub-sub-requirements}
[https://datatracker.ietf.org/doc/draft-ietf-i2rs-pub-sub-requirements/].
The mechanism for delivering on these YANG-PUSH requirements over
Netconf transport is defined in {netconf-yang-push} [netconf-yang-push:
https://tools.ietf.org/html/draft-ietf-netconf-yang-push-00].

Note that in the current release, not all capabilities of
draft-ietf-netconf-yang-push are realized. Currently only implemented is
**create-subscription** RPC support from
ietf-datastore-push@2015-10-15.yang; and this will be for periodic
subscriptions only. There of course is intent to provide much additional
functionality in future OpenDaylight releases.

Future YANG-PUSH capabilities
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Over time, the intent is to flesh out more robust capabilities which
will allow OpenDaylight applications to subscribe to YANG-PUSH compliant
devices. Capabilities for future releases will include:

Support for subscription change/delete: **modify-subscription** rpc
support for all mountpoint devices or particular mountpoint device
**delete-subscription** rpc support for all mountpoint devices or
particular mountpoint device

Support for static subscriptions: This will enable the receipt of
subscription updates pushed from publishing devices where no signaling
from the controller has been used to establish the subscriptions.

Support for additional transports: NETCONF is not the only transport of
interest to OpenDaylight or the subscribed devices. Over time this code
will support Restconf and HTTP/2 transport requirements defined in
{netconf-restconf-yang-push}
[https://tools.ietf.org/html/draft-voit-netconf-restconf-yang-push-01]

YANG-PUSH Architecture
----------------------

The code architecture of Yang push consists of two main elements

YANGPUSH Provider YANGPUSH Listener

YANGPUSH Provider receives create-subscription requests from
applications and then establishes/registers the corresponding listener
which will receive information pushed by a publisher. In addition,
YANGPUSH Provider also invokes an augmented OpenDaylight
create-subscription RPC which enables applications to register for
notification as per rfc5277. This augmentation adds periodic time period
(duration) and subscription-id values to the existing RPC parameters.
The Java package supporting this capability is
“org.opendaylight.yangpush.impl”. YangpushDomProvider is the class which
supports this YANGPUSH Provider capability.

The YANGPUSH Listener accepts update notifications from a device after
they have been de-encapsulated from the NETCONF transport. The YANGPUSH
Listener then passes these updates to MD-SAL. This function is
implemented via the YangpushDOMNotificationListener class within the
“org.opendaylight.yangpush.listner” Java package. Applications should
monitor MD-SAL for the availability of newly pushed subscription
updates.

YANG-PUSH Catalog
-----------------

The NF Catalog contains metadata describing a NF.

Configuring YANG-PUSH Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TBD: Describe how to configure YANG-PUSH Catalog after installation.

Administering YANG-PUSH Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TBD: Include related command reference or operations for using YANG-PUSH
Catalog.

YANG-PUSH Workload Manager
--------------------------

The Workload Manager defines RPCs to manage instances.

Configuring YANG-PUSH Workload Manager
--------------------------------------

TBD: Describe how to configure YANG-PUSH Workload Manager after
installation.

Administering YANG-PUSH Workload Manager
----------------------------------------

TBD: Include related command reference or operations for using YANG-PUSH
Workload Manager.

Tutorials
---------

Below are tutorials for YANG-PUSH.

Using YANG-PUSH Catalog
~~~~~~~~~~~~~~~~~~~~~~~

TBD: State the purpose of tutorial

Overview
^^^^^^^^

TBD: An overview of the YANG-PUSH Catalog tutorial

Prerequisites
^^^^^^^^^^^^^

TBD: Provide any prerequisite information, assumed knowledge, or
environment required to execute the use case.

Target Environment
^^^^^^^^^^^^^^^^^^

There are no topology requirement for using YANG-PUSH. A single node
able interact as per
https://tools.ietf.org/html/draft-ietf-netconf-yang-push-00 is
sufficient to use this capability.

Instructions
^^^^^^^^^^^^

TBD: Step by step procedure for using YANG-PUSH Catalog.

Using YANG-PUSH Workload Manager
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TBD: State the purpose of tutorial

Overview
^^^^^^^^

TBD: An overview of the YANG-PUSH Workload Manager tutorial

Prerequisites
^^^^^^^^^^^^^

TBD: Provide any prerequisite information, assumed knowledge, or
environment required to execute the use case.

Target Environment
^^^^^^^^^^^^^^^^^^

TBD: Include any topology requirement for the use case.

Instructions
^^^^^^^^^^^^

TBD: Step by step procedure for using YANG-PUSH Workload Manager.
