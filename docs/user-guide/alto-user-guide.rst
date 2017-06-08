.. _alto-user-guide:

ALTO User Guide
===============

Overview
--------

The ALTO project is aimed to provide support for **Application Layer
Traffic Optimization** services defined in `RFC
7285 <https://tools.ietf.org/html/rfc7285>`__ in OpenDaylight.

This user guide will introduce the three basic services (namely
``simple-ird``, ``manual-maps`` and ``host-tracker``) which are
implemented since the Beryllium release, and give instructions on how to
configure them to provide corresponding ALTO services.

A new feature named ``simple-pce`` (**Simple Path Computation Engine**)
is added into Boron release as an ALTO extension service.

How to Identify ALTO Resources
------------------------------

Each ALTO resource can be uniquely identified by a tuple . For each
resource, a *version-tag* is used to support historical look-ups.

The formats of *resource-id* and *version-tag* are defined in `section
10.2 <https://tools.ietf.org/html/rfc7285#section-10.2>`__ and `section
10.3 <https://tools.ietf.org/html/rfc7285#section-10.3>`__ respectively.
The *context-id* is not part of the protocol and we choose the same
format as a *universal unique identifier* (UUID) which is defined in
`RFC 4122 <http://tools.ietf.org/html/rfc4122>`__.

A context is like a namespace for ALTO resources, which eliminates
*resource-id* collisions. For simplicity, we also provide a default
context with the id **000000000000-0000-0000-0000-00000000**.

How to Use Simple IRD
---------------------

The simple IRD feature provides a simple *information resource
directory* (IRD) service defined in `RFC
7285 <https://tools.ietf.org/html/rfc7285#section-9>`__.

Install the Feature
~~~~~~~~~~~~~~~~~~~

To enable simple IRD, run the following command in the karaf CLI:

.. code:: bash

    karaf > feature:install odl-alto-simpleird

After the feature is successfully installed, a special context will be
created for all simple IRD resources. The id for this context can be
seen by executing the following command in a terminal:

.. code:: bash

    curl -X GET -u admin:admin http://localhost:8181/restconf/operational/alto-simple-ird:information/

Create a new IRD
~~~~~~~~~~~~~~~~

To create a new IRD resource, two fields MUST be provided:

-  Field **instance-id**: the *resource-id* of the IRD resource;

-  Field **entry-context**: the context-id for non-IRD entries managed
   by this IRD resource.

Using the following script, one can create an empty IRD resource:

.. code:: bash

    #!/bin/bash
    # filename: ird-create
    INSTANCE_ID=$1
    if [ $2 ]; then
        CONTEXT_ID=$2
    else
        CONTEXT_ID="00000000-0000-0000-0000-000000000000"
    fi
    URL="`http://localhost:8181/restconf/config/alto-simple-ird:ird-instance-configuration/"$INSTANCE_ID"/[`http://localhost:8181/restconf/config/alto-simple-ird:ird-instance-configuration/"$INSTANCE_ID"/`]`"
    DATA=$(cat template \
      | sed 's/\$1/'$CONTEXT_ID'/g' \
      | sed 's/\$2/'$INSTANCE_ID'/g')
    curl -4 -D - -X PUT -u admin:admin \
      -H "Content-Type: application/json" -d "$(echo $DATA)"\
      $URL

For example, the following command will create a new IRD named *ird*
which can accept entries with the default context-id:

.. code:: bash

    $ ./ird-create ird 000000000000-0000-0000-0000-00000000

And below is the what the template file looks like:

.. code:: json

    {
        "ird-instance-configuration": {
            "entry-context": "/alto-resourcepool:context[alto-resourcepool:context-id='$1']",
            "instance-id": "$2"
        }
    }

Remove an IRD
~~~~~~~~~~~~~

To remove an existing IRD (and all the entries in it), one can use the
following command in a terminal:

.. code:: bash

    curl -X DELETE -u admin:admin http://localhost:8181/restconf/config/alto-simple-ird:ird-instance-configuration/$INSTANCE_ID

Add a new entry
~~~~~~~~~~~~~~~

There are several ways to add entries to an IRD and in this section we
introduce only the simplest method. Using the following script, one can
add a new entry to the target IRD.

For each new entry, four parameters MUST be provided:

-  Parameter *ird-id*: the *resource-id* of the target IRD;

-  Parameter *entry-id*: the *resource-id* of the ALTO service to be
   added;

-  Parameter *context-id*: the *context-id* of the ALTO service to be
   added, which MUST be identical to the target IRD’s *entry-context*;

-  Parameter *location*: either a URI or a relative path to the ALTO
   service.

The following script can be used to add one entry to the target IRD,
where the relative path is used:

.. code:: bash

    #!/bin/bash
    # filename: ird-add-entry
    IRD_ID=$1
    ENTRY_ID=$2
    CONTEXT_ID=$3
    BASE_URL=$4
    URL="`http://localhost:8181/restconf/config/alto-simple-ird:ird-instance-configuration/"$IRD_ID"/ird-configuration-entry/"$ENTRY_ID"/"
    DATA=$(cat template \
      | sed 's/\$1/'$ENTRY_ID'/g' \
      | sed 's/\$2/'$CONTEXT_ID'/g' \
      | sed 's/\$3/'$BASE_URL'/g' )
    curl -4 -D - -X PUT -u admin:admin \
      -H "Content-Type: application/json" -d "$(echo $DATA)" \
      $URL

For example, the following command will add a new resource named
*networkmap*, whose context-id is the default context-id and the base
URL is /alto/networkmap, to the IRD named *ird*:

.. code:: bash

    $ ./ird-add-entry ird networkmap 000000000000-0000-0000-0000-00000000 /alto/networkmap

And below is the template file:

.. code:: json

    {
        "ird-configuration-entry": {
            "entry-id": "$1",
            "instance": "/alto-resourcepool:context[alto-resourcepool:context-id='$2']/alto-resourcepool:resource[alto-resourcepool:resource-id='$1']",
            "path": "$3/$1"
        }
    }

Remove an entry
~~~~~~~~~~~~~~~

To remove an entry from an IRD, one can use the following one-line
command:

.. code:: bash

    curl -X DELETE -u admin:admin http://localhost:8181/restconf/config/alto-simple-ird:ird-instance-configuration/$IRD_ID/ird-configuration-entry/$ENTRY_ID/

How to Use Host-tracker-based ECS
---------------------------------

As a real instance of ALTO services, ***alto-hosttracker*** reads data
from ***l2switch*** and generates a network map with resource id
***hosttracker-network-map*** and a cost map with resource id
***hostracker-cost-map***. It can only work with OpenFlow-enabled
networks.

After installing the ***odl-alto-hosttracker*** feature, the
corresponding network map and cost map will be inserted into the data
store.

Managing Resource with ``alto-resourcepool``
--------------------------------------------

After installing ``odl-alto-release`` feature in Karaf,
``alto-resourcepool`` feature will be installed automatically. And you
can manage all resources in ALTO via RESTCONF APIs provided by
``alto-resourcepool``.

With the example bash script below you can get any resource infomation
in a given context.

.. code:: bash

    #!/bin/bash
    RESOURCE_ID=$1
    if [ $2 ] ; then
        CONTEXT_ID=$2
    else
        CONTEXT_ID="00000000-0000-0000-0000-000000000000"
    fi
    URL="http://localhost:8181/restconf/operational/alto-resourcepool:context/"$CONTEXT_ID"/alto-resourcepool:resource/"$RESOURCE_ID
    curl -X GET -u admin:admin $URL | python -m json.tool | sed -n '/default-tag/p' | sed 's/.*:.*\"\(.*\)\".*/\1/g'

Manual Configuration
--------------------

Using RESTCONF API
~~~~~~~~~~~~~~~~~~

After installing ``odl-alto-release`` feature in Karaf, it is possible
to manage network-maps and cost-maps using RESTCONF. Take a look at all
the operations provided by ``resource-config`` at the API service page
which can be found at
``http://localhost:8181/apidoc/explorer/index.html``.

The easiest method to operate network-maps and cost-maps is to modify
data broker via RESTCONF API directly.

Using RPC
~~~~~~~~~

The ``resource-config`` package also provides a query RPC to config the
resources. You can CREATE, UPDATE and DELETE **network-maps** and
**cost-maps** via query RPC.

Simple Path Computation Engine
------------------------------

The ``simple-pce`` module provides a simple path computation engine for
ALTO and other projects. It supports basic CRUD (create, read, update,
delete) operations to manage L2 and L3 routing with/without rate
limitation. This module is an independent feature, so you can follow the
instruction below to install it independently.

.. code:: bash

    karaf > feature:install odl-alto-extenstion

.. note::

    The rate limitation meter requires OpenFlow 1.3 support.

Basic Usage with RESTCONF API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can use the simple path computation engine with RESTCONF API, which
is defined in the YANG model
`here <https://git.opendaylight.org/gerrit/gitweb?p=alto.git;a=blob;f=alto-extensions/simple-pce/api/src/main/yang/alto-spce.yang;h=f5bbe6744f7dfba493edd275aa18114e363727ab;hb=refs/heads/stable/boron>`__.

Use Case
--------

Server Selection
~~~~~~~~~~~~~~~~

One of the key use case for ALTO is server selection. For example, a
client (with IP address 10.0.0.1) sends a data transferring request to
Data Transferring Service (DTS). And there are three data replica
servers (with IP address 10.60.0.1, 10.60.0.2 and 10.60.0.3) which can
response the request. In this case, DTS can send a query request to ALTO
server to make server selection decision.

Following is an example ALTO query:

::

    POST /alto/endpointcost HTTP/1.1
    Host: localhost:8080
    Content-Type: application/alto-endpointcostparams+json
    Accept: application/alto-endpointcost+json,application/alto-error+json
    {
      "cost-type": {
        "cost-mode": "ordinal",
        "cost-metric": "hopcount"
      },
      "endpoints": {
        "srcs": [ "ipv4:10.0.0.1" ],
        "dsts": [
          "ipv4:10.60.0.1",
          "ipv4:10.60.0.2",
          "ipv4:10.60.0.3"
      ]
      }
    }
