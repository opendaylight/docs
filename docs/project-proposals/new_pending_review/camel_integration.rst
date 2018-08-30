Name
----

Apache Camel Integration

Repo Name
---------

camelIntegration

Description
-----------

Purpose of this project is to simplify system integration use cases. We
propose to use well known integration library `Apache
Camel <http://camel.apache.org>`__. The advantage of doing this is to
reuse Apache Camel functionality (in conjunction with ODL):

#. `Adapters <https://camel.apache.org/components.html>`__ - especially:
   `ActiveMQ <https://camel.apache.org/activemq.html>`__,
   `CFX <https://camel.apache.org/cxf.html>`__,
   `JMS <https://camel.apache.org/jms.html>`__,
   `Kafka <https://camel.apache.org/kafka.html>`__,
   `Spark <https://camel.apache.org/apache-spark.html>`__
#. `Data Formats <https://camel.apache.org/data-format.html>`__ -
   especially: `AVRO <https://camel.apache.org/avro.html>`__,
   `SOAP <https://camel.apache.org/soap.html>`__,
   `GZIP <https://camel.apache.org/gzip-data-format.html>`__,
   `CRYPTO <https://camel.apache.org/crypto.html>`__,
#. `Enterprise Integration
   Patterns <http://camel.apache.org/enterprise-integration-patterns.html>`__
   - especially: `Pipes &
   Filters <http://camel.apache.org/pipes-and-filters.html>`__, `Retry
   Policy <http://camel.apache.org/how-do-i-retry-processing-a-message-from-a-certain-point-back-or-an-entire-route.html>`__,
   `Polling Consumer <http://camel.apache.org/polling-consumer.html>`__,
   `Endpoint Multicast <http://camel.apache.org/multicast.html>`__,
   `Endpoint Load
   Balancing <http://camel.apache.org/load-balancer.html>`__,
   `Guaranteed
   Delivery <http://camel.apache.org/guaranteed-delivery.html>`__ and
   `Throttler/Sampling <http://camel.apache.org/throttler.html>`__

Architecture
------------

This project implements `https://camel.apache.org/components.html Apache
Camel
Component <https://camel.apache.org/components.html_Apache_Camel_Component>`__
designed to consume nad produce MD-SAL events in particular `Camel
Routes <http://camel.apache.org/routes.html>`__. ODL applications are
able to specify own custom Camel Context and one or more Routes. These
camel contexts and Routes are defined at compile time and are packaged
within ODL applications. Each camel Route specifies which MD-SAM event
is consumed and how it will be propagated to integrated external systems
(simmilar principle is applied also while consuming events from external
systems).

.. figure:: Odl-camel-arch.png
   :alt: Architecture
   :width: 600px

   Architecture

Use Cases
---------

High level use cases enabled by this approach in ODL:

-  subscribe to yang notifications and propagate them to external
   systems
-  receive events from external systems and transform them to YANG
   notifications
-  replicate data tree changes by using Camel Routes
-  data transformation the interchanged messages (structure, ZIP, binary
   optimization, encryption/signature...)
-  Avoid overloading of incoming messages from external systems
-  Retry/Multicast/LoadBalance the HTTP based communication while
   integrating external system

Motivation:

-  Make ODL integrations with external systems easier (even messaging
   base, HTTP based or big data oriented).
-  Make use of available Apache Camel Components/Adapters.
-  Enable ODL users to create own Camel Routes.

Example
-------

Karaf feature activation

::

   feature:install camel
   feature:install odl-camel
   feature:install odl-restconf
   feature:install odl-my-custom-feature

odl-my-custom-feature

To cover basic integration scenarios, no java code implementation is
required. Custom Karaf feature has dependency on Apache Camel Karaf
features already available in karaf repositories. When custom project
bundle is deployed into Karaf, the project’s dependencies are resolved,
and upon start, the Blueprint descriptor file is processed and objects
are instantiated and populated into the Blueprint container. That's how
camel context is propagated. Samples od blueprint.xml and features.xml
are below.

-  features.xml

::

   <features name="odl-my-custom-feature-${project.version}" >
      ...
      <repository>mvn:org.apache.camel.karaf/apache-camel/${camel.version}/xml/features</repository>
      ...

     <feature name='odl-my-custom-feature' version='${project.version}' description='OpenDaylight :: my custom feature'>
       <feature version="${camel.version}">camel</feature>
       <feature version='${mdsal.version}'>odl-mdsal-broker</feature>
       <feature version="${odlcamel.version}">odl-camel</feature>
       ....
     </feature> 
   </features>

-  blueprint.xml example for propagating YANG notifications to Kafka

::

   <blueprint xmlns="http://www.osgi.org/xmlns/blueprint/v1.0.0"
     xmlns:odl="http://opendaylight.org/xmlns/blueprint/v1.0.0"
     odl:use-default-for-reference-types="true">
    
     ...

     <camelContext id="myBlueprintContext" trace="false" xmlns="http://camel.apache.org/schema/blueprint">
       <!-- custom context properties -->
       <route id="PropagateOdlNotificationRoute">
         ...
         <from uri="odl-notification://myModule:myAppNotification"/>
         <marshal ref="avro"/>
         <marshal ref="zip"/>
         <to uri="kafka:localhost:9092?topic=test"/>
       </route>
     </camelContext>

   </blueprint>

-  blueprint.xml example for Data Tree Change Replication

::

   <blueprint xmlns="http://www.osgi.org/xmlns/blueprint/v1.0.0"
     xmlns:odl="http://opendaylight.org/xmlns/blueprint/v1.0.0"
     odl:use-default-for-reference-types="true">
    
     ...

     <camelContext id="myBlueprintContext" trace="false" xmlns="http://camel.apache.org/schema/blueprint">
       <!-- custom context properties -->
       <route id="ReplicateMyAppDataTreeChange">
         ...
         <from uri="odl-data://config/myModule:myAppData"/>
         <to uri="kafka:localhost:9092?topic=test"/>
       </route>
     </camelContext>

   </blueprint>

after installing all features in ODL karaf runtime:

::

   opendaylight-user@root>camel:route-list 
    Context            Route            Status              Total #       Failed #     Inflight #   Uptime          
    -------            -----            ------              -------       --------     ----------   ------          
    myBlueprintContext   customOdlRoute   Started                  62              0              0   32.612 seconds  
   opendaylight-user@root>camel:endpoint-list myBlueprintContext 
    Uri                             Status  
    ---                             ------  
    kafka:localhost:9092?topic=test Started  
    odl://config/myModule:myAppData Started  

Scope
-----

-  ODL Apache Camel feature odl-camel implementing

   -  Camel Component
   -  Camel Endpoint
   -  Camel Consumer
   -  Camel Producer

-  odl-camel implements uses ODL binding independent APIs to consume
   data tree events and/or notifications and based on camel context
   parameters forward those using specified routes.
-  Unit tests
-  ODL clustering support
-  Documentation for installation and user guides
-  Camel consumer is supported in first project phase

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Juraj Veverka (juraj.veverka@pantheon.tech)
-  Jozef Slezak (jozef.slezak@pantheon.tech)

Initial Committers
------------------

-  Juraj Veverka (juraj.veverka@pantheon.tech)
-  Jozef Slezak (jozef.slezak@pantheon.tech)

Vendor Neutral
--------------

The initial code base is to be developed for ODL as part of the Carbon
release. Vendor neutral.

Meets Board Policy (including IPR)
----------------------------------
