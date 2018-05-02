.. _alto-developer-guide:

ALTO Developer Guide
====================

Overview
--------

The topics of this guide are:

1. How to add alto projects as dependencies;

2. How to put/fetch data from ALTO;

3. Basic API and DataType;

4. How to use customized service implementations.

Adding ALTO Projects as Dependencies
------------------------------------

Most ALTO packages can be added as dependencies in Maven projects by
putting the following code in the *pom.xml* file.

::

    <dependency>
        <groupId>org.opendaylight.alto</groupId>
        <artifactId>${THE_NAME_OF_THE_PACKAGE_YOU_NEED}</artifactId>
        <version>${ALTO_VERSION}</version>
    </dependency>

The current stable version for ALTO is ``0.3.0-Boron``.

Putting/Fetching data from ALTO
-------------------------------

Using RESTful API
~~~~~~~~~~~~~~~~~

There are two kinds of RESTful APIs for ALTO: the one provided by
``alto-northbound`` which follows the formats defined in `RFC
7285 <https://tools.ietf.org/html/rfc7285>`__, and the one provided by
RESTCONF whose format is defined by the YANG model proposed in `this
draft <https://tools.ietf.org/html/draft-shi-alto-yang-model-03>`__.

One way to get the URLs for the resources from ``alto-northbound`` is to
visit the IRD service first where there is a ``uri`` field for every
entry. However, the IRD service is not yet implemented so currently the
developers have to construct the URLs themselves. The base URL is
``/alto`` and below is a list of the specific paths defined in
``alto-core/standard-northbound-route`` using Jersey ``@Path``
annotation:

-  ``/ird/{rid}``: the path to access *IRD* services;

-  ``/networkmap/{rid}[/{tag}]``: the path to access *Network Map* and
   *Filtered Network Map* services;

-  ``/costmap/{rid}[/{tag}[/{mode}/{metric}]]``: the path to access
   *Cost Map* and *Filtered Cost Map* services;

-  ``/endpointprop``: the path to access *Endpoint Property* services;

-  ``/endpointcost``: the path to access *Endpoint Cost* services.

.. note::

    The segments in brackets are optional.

If you want to fetch the data using RESTCONF, it is highly recommended
to take a look at the ``apidoc`` page
(`http://{controller\_ip}:8181/apidoc/explorer/index.html <http://{controller_ip}:8181/apidoc/explorer/index.html>`__)
after installing the ``odl-alto-release`` feature in karaf.

It is also worth pointing out that ``alto-northbound`` only supports
``GET`` and ``POST`` operations so it is impossible to manipulate the
data through its RESTful APIs. To modify the data, use ``PUT`` and
``DELETE`` methods with RESTCONF.

.. note::

    The current implementation uses the ``configuration`` data store and
    that enables the developers to modify the data directly through
    RESTCONF. In the future this approach might be disabled in the core
    packages of ALTO but may still be available as an extension.

Using MD-SAL
~~~~~~~~~~~~

You can also fetch data from the datastore directly.

First you must get the access to the datastore by registering your
module with a data broker.

Then an ``InstanceIdentifier`` must be created. Here is an example of
how to build an ``InstanceIdentifier`` for a *network map*:

::

    import org.opendaylight...alto...Resources;
    import org.opendaylight...alto...resources.NetworkMaps;
    import org.opendaylight...alto...resources.network.maps.NetworkMap;
    import org.opendaylight...alto...resources.network.maps.NetworkMapKey;
    ...
    protected
    InstanceIdentifier<NetworkMap> getNetworkMapIID(String resource_id) {
      ResourceId rid = ResourceId.getDefaultInstance(resource_id);
      NetworkMapKey key = new NetworkMapKey(rid);
      InstanceIdentifier<NetworkMap> iid = null;
      iid = InstanceIdentifier.builder(Resources.class)
                              .child(NetworkMaps.class)
                              .child(NetworkMap.class, key)
                              .build();
      return iid;
    }
    ...

With the ``InstanceIdentifier`` you can use ``ReadOnlyTransaction``,
``WriteTransaction`` and ``ReadWriteTransaction`` to manipulate the data
accordingly. The ``simple-impl`` package, which provides some of the
AD-SAL APIs mentioned above, is using this method to get data from the
datastore and then convert them into RFC7285-compatible objects.

Basic API and DataType
----------------------

a. alto-basic-types: Defines basic types of ALTO protocol.

b. alto-service-model-api: Includes the YANG models for the five basic
   ALTO services defined in `RFC
   7285 <https://tools.ietf.org/html/rfc7285>`__.

c. alto-resourcepool: Manages the meta data of each ALTO service,
   including capabilities and versions.

d. alto-northbound: Provides the root of RFC7285-compatible services at
   http://localhost:8080/alto.

e. alto-northbound-route: Provides the root of the network map resources
   at http://localhost:8080/alto/networkmap/.

How to customize service
------------------------

Define new service API
~~~~~~~~~~~~~~~~~~~~~~

Add a new module in ``alto-core/standard-service-models``. For example,
we named our service model module as ``model-example``.

Implement service RPC
~~~~~~~~~~~~~~~~~~~~~

Add a new module in ``alto-basic`` to implement a service RPC in
``alto-core``.

Currently ``alto-core/standard-service-models/model-base`` has defined a
template of the service RPC. You can define your own RPC using
``augment`` in YANG. Here is an example in ``alto-simpleird``.

.. code::

        grouping "alto-ird-request" {
            container "ird-request" {
            }
        }
        grouping "alto-ird-response" {
            container "ird" {
                container "meta" {
                }
                list "resource" {
                    key "resource-id";
                    leaf "resource-id" {
                        type "alto-types:resource-id";
                    }
                }
            }
        }
        augment "/base:query/base:input/base:request" {
            case "ird-request-data" {
                uses "alto-ird-request";
            }
        }
        augment "/base:query/base:output/base:response" {
            case "ird-response-data" {
                uses "alto-ird-response";
            }
        }

Register northbound route
~~~~~~~~~~~~~~~~~~~~~~~~~

If necessary, you can add a northbound route module in
``alto-core/standard-northbound-routes``.
