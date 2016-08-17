YANG-PUSH Developer Guide
=========================

Overview
--------

The YANG PUBSUB project allows subscriptions to be placed on targeted
subtrees of YANG datastores residing on remote devices. Changes in YANG
objects within the remote subtree can be pushed to an OpenDaylight
controller as specified without a requiring the controller to make a
continuous set of fetch requests.

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
“org.opendaylight.yangpush.impl”. Below class supports the YANGPUSH
Provider capability:

(1) YangpushDomProvider The Binding Independent version. It uses a
neutral data Document Object Model format for data and API calls, which
is independent of any generated Java language bindings from the YANG
model.

The YANGPUSH Listener accepts update notifications from a device after
they have been de-encapsulated from the NETCONF transport. The YANGPUSH
Listener then passes these updates to MD-SAL. This function is
implemented via the YangpushDOMNotificationListener class within the
“org.opendaylight.yangpush.listner” Java package.

Key APIs and Interfaces
-----------------------

YangpushDomProvider
~~~~~~~~~~~~~~~~~~~

Central to this is onSessionInitiated which acquires the Document Object
Model format based versions of MD-SAL services, including the MountPoint
service and RPCs. Via these acquired services, invoke
registerDataChangeListener over in YangpushDOMNotificationListener.

YangpushDOMNotificationListener
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This API handles instances of a received Push Updates which are inbound
to the listener and places these in MD-SAL. Key classes in include:

onPushUpdate Converts and validates the encoding of the pushed
subscription update. If the subscription exists and is active, calls
updateDataStoreForPushUpdate so that the information can be put in
MD-SAL. Finally logs the pushed subscription update as well as some
additional context information.

updateDataStoreForPushUpdate Used to put the published information into
MD-SAL. This pushed information will also include elements such as the
subscription-id, the identity of the publisher, the time of the update,
the incoming encoding type, and the pushed YANG subtree information.

YangpushDOMNotificationListener Starts the listener tracking a new
Subscription ID from a particular publisher.

API Reference Documentation
---------------------------

Javadocs are generated while creating mvn:site and they are located in
target/ directory in each module.

.. |Openstack Integration| image:: ./images/openstack_integration.png
.. |Screenshot8| image:: ./images/Screenshot8.png
   :width: 500px
