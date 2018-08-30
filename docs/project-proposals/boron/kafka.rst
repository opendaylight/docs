Name
----

Kafka Producer

Repo Name
---------

kafkaproducer

Description
-----------

The kafkaproducer plugin is a northbound plugin which allows real-time
data streaming from OpenDaylight into a Kafka endpoints. The key design
goal for this plugin is to provide a generic and configurable data
connector that subscribes to southbound event source(s), for example
using OpenDaylight’s Event Topic Broker (ETB), which then forwards these
notifications to a Kafka endpoint/s.

.. figure:: Kafkaplugingraphic1-jpg.jpg
   :alt: Kafkaplugingraphic1-jpg.jpg
   :width: 400px

   Kafkaplugingraphic1-jpg.jpg

The kafkaplugin is configurable via REST/java apis in ODL. Initial
configuration supports multiple endpoints, Event Topic Broker topic-id,
and multiple serialisation/codec formats and other features.

Example REST Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~

The following example details a simple REST call which:

-  activates the plugin
-  defines a Kafka cluster topic for Opendaylight to send data to
-  gives compression / codec type and serialization
-  and then which topic from the OpenDaylight Event Topic Broker the
   plugin will be sending messages from

::

   PUT: http://localhost:8181/restconf/config/kafkaproducer:kafka-producer-config

   HEADERS: application/yang.data+json

   BODY:
   {
       "kafka-producer-config": {
        "metadata-broker-list": "192.168.1.1:9092,192.168.1.2:9092",
        "topic": “test-topic”,
        "producer-type": "sync",
        "compression-codec": "none",
        "message-serialization": "raw", 
         "event-subscriptions": "278206ca-746e-45b9-9846-a51dfbb086f5"
     }
   }

Scope
-----

-  The kafkaproducer plugin is a northbound plugin which allows
   real-time data streaming from OpenDaylight into a Kafka endpoints.
-  Kafkaproducer is implemented as a feature into Opendaylight
-  It will support Lithium and greater
-  It will be extensible in order to support more configuration
   parameters added as requested / committed.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Xiaoyu Chen (login williscc, williscc@cisco.com)
-  Andrew McLachlan (login andrewmcl, amclachl@cisco.com)
-  Vaclav Demcak (login vaclav, vaclav.demcak@pantheon.sk)
-  Jozef Gloncak (login jozef.gloncak, jgloncak@cisco.com)

Initial Committers
------------------

-  Xiaoyu Chen (login williscc, williscc@cisco.com)

-  Andrew McLachlan (login andrewmcl, amclachl@cisco.com)

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

Yes

Presentation Material
---------------------

TSC Meeting presentation - |Kafka_Proposal_to_TSC.pptx|

.. |Kafka_Proposal_to_TSC.pptx| image:: Kafka_Proposal_to_TSC.pptx