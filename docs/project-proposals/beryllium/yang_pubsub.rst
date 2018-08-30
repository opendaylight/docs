Name
----

YANG PUBSUB

Repo Name
---------

yang-push

Description
-----------

The YANG PUBSUB project allows subscriptions to be placed on targeted
subtrees of YANG datastores residing on remote devices. Changes in YANG
objects within the remote subtree can be pushed to an OpenDaylight
controller as specified without a requiring the controller to make a
continuous set of fetch requests.

Iterative fetching of data is not an adequate solution for applications
requiring frequent or prompt updates of remote object state. Reasons
include:

-  Trying to impose a polling based solution to this problem imposes
   load on networks, controllers, routers, and applications.
-  The propagation latency achievable with polling can be undesirably
   slow for some applications.
-  Polling solutions are brittle in the face of communication glitches,
   and they have limitations in their ability to synchronize and
   calibrate retrieval intervals across a network.

A full set of requirements and reasoning can be found in the IETF's
`I2RS PubSub requirements`_. A solution to these requirements is being
worked in the NETCONF WG (see `draft-clemm-netconf-yang-push`_). A high
level overview of this solution is below.

.. figure:: yang-pubsub-summary.png
   :alt: High Level Architecture

   High Level Architecture

Incorporating OpenDaylight code able to access a yang-push compliant
datastore will enable a controller to avoid the issues listed above.
Based on criteria negotiated as part of such a subscription, updates
will be pushed to a controller. Negotiable subscription criteria
include:

-  whether changes should be sent as they are made on the remote device
   (on-change), or
-  whether changes should be sent on recurring intervals (periodic).
-  Subtree or XPATH filters to eliminate unneeded objects from a pushed
   update
-  Additional parameters as described in
   `draft-clemm-netconf-yang-push`_

Scope
-----

The intent is to have all code being able to integrate with the IETF
draft in the IETF NETCONF WG.

-  Client implementation which can operate with a
   `draft-clemm-netconf-yang-push`_ compliant datastore
-  Enhance Netconf protocol client API to enable data subscription

Other components affected/used by this proposal include:

-  Controller
-  NETCONF

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Ambika Prasad Tripathy
-  Suryamani Kar
-  Eric Voit
-  Alexander Clemm
-  Einar Nilsen-Nygaard
-  Swaroop Shastri
-  Reena Kohli
-  Janosch Klein
-  Jayashankar T

Initial Committers
------------------

-  Ambika Prasad Tripathy, Ambika.Tripathy, ambika.tripathy@cisco.com
-  Suryamani Kar, suryamanikar, suryamanikar@gmail.com
-  Eric Voit, Evoit, evoit@cisco.com
-  Alexander Clemm, alexclemm, alex@cisco.com
-  Einar Nilsen-Nygaard, einarnn, einarnn@cisco.com
-  Swaroop Shastri, swaroopshastri, shastriswaroop@gmail.com

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

Meets Board Policy (including IPR)
----------------------------------

Presentation
------------

.. figure:: ODL-Beryllium-YANG-PUB-SUB.pptx
   :alt: ODL-Beryllium-YANG-PUB-SUB.pptx

   ODL-Beryllium-YANG-PUB-SUB.pptx
.. _I2RS PubSub requirements: https://datatracker.ietf.org/doc/draft-ietf-i2rs-pub-sub-requirements/
.. _draft-clemm-netconf-yang-push: https://tools.ietf.org/html/draft-clemm-netconf-yang-push-01