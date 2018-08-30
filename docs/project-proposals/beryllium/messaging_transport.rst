Name
----

Messaging4Transport - Message Oriented Middleware Bindings for MD-SAL

Repo Name
---------

messaging4transport

Description
-----------

The OpenDaylight controller is based on an MD-SAL allows the modeling of
data, RPCs, and notifications. Because of this model basis, adding new
northbound bindings northbound bindings to the controller is simple, and
everything modeled becomes exposed automatically. Currently the MD-SAL
has restconf NB bindings, where more bindings such as AMQP and XMPP can
easily be implemented and integrated.

AMQP is an open standard application layer protocol for message-oriented
middleware. This project adds AMQP bindings to the MD-SAL, which would
automatically make all MD-SAL APIs available via that mechanism. AMQP
bindings integration is built as an independent Karaf feature, that
would expose the MD-SAL datatree, rpcs, and notifications via AMQP, when
installed.

Many implementations of AMQP exists. `ActiveMQ`_ is a popular open
source messaging and Integration Patterns server, which offers an
implementation of AMQP. Initial implementation of AMQP bindings are
developed and tested with ActiveMQ-5.9.0. Deploying the bundle as an
Apache Camel processor, any broker can be chosen without the bundle
being coupled to a specific bundle.

Scope
-----

-  Developing Bindings for OpenDaylight MD-SAL to integrate with
   Message-Oriented Middleware.
-  Design and Implementation of `Advanced Message Queuing Protocol
   (AMQP)`_ bindings.
-  Potential extension points for bindings for other protocols such as
   `STOMP`_, `MQTT`_, and `OpenWire`_.

The project does not affect any other existing projects of OpenDaylight.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Pradeeban Kathiravelu (pradeeban, kk.pradeeban@gmail.com)
-  Tony Tkacik (ttkacik, ttkacik@cisco.com)

Initial Committers
------------------

-  Pradeeban Kathiravelu (kk.pradeeban@gmail.com)
-  Tony Tkacik (ttkacik@cisco.com)

Vendor Neutral
--------------

Vendor agnostic

Meets Board Policy (including IPR)
----------------------------------

See also
========

-  `AMQP_Bindings_for_MD-SAL`_
-  |Messaging4Transport.pdf|
-  `OpenDaylight Summit 2015 - Introduction to Messaging4Transport`_

.. _ActiveMQ: http://activemq.apache.org/amqp.html
.. _Advanced Message Queuing Protocol (AMQP): http://www.amqp.org
.. _STOMP: http://stomp.github.io/
.. _MQTT: http://mqtt.org/
.. _OpenWire: http://activemq.apache.org/openwire.html
.. _AMQP_Bindings_for_MD-SAL: AMQP_Bindings_for_MD-SAL
.. _OpenDaylight Summit 2015 - Introduction to Messaging4Transport: https://www.youtube.com/watch?v=kUQZwdJZk6k

.. |Messaging4Transport.pdf| image:: Messaging4Transport.pdf