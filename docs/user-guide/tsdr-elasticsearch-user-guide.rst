.. _tsdr-elasticsearch-user-guide:

ElasticSearch
=============

Setting Up the environment
--------------------------

To setup and run the TSDR data store ElasticSearch feature, you need to have
an ElasticSearch node (or a cluster of such nodes) running. You can use a
customized ElasticSearch docker image for this purpose.

Your ElasticSearch (ES)  setup must have the "Delete By Query Plugin" installed.
Without this, some of the ES functionality won't work properly.


Creating a custom ElasticSearch docker image
--------------------------------------------

(You can skip this section if you already have an instance of ElasticSearch running)

Run the following set of commands:

.. code-block:: bash

    cat << EOF > Dockerfile
    FROM elasticsearch:2
    RUN /usr/share/elasticsearch/bin/plugin install --batch delete-by-query
    EOF

To build the image, run the following command in the directory where the
Dockerfile was created:

.. code-block:: bash

    docker build . -t elasticsearch-dd

You can check whether the image was properly created by running:

.. code-block:: bash

    docker images

This should print all your container images including the elasticsearch-dd.

Now we can create and run a container from our image by typing:

.. code-block:: bash

    docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch-dd elasticsearch-dd

To see whether the container is running, run the following command:

.. code-block:: bash

    docker ps

The output should include a row with elasticsearch-dd in the NAMES column.
To check the std out of this container use

.. code-block:: bash

    docker logs elasticsearch-dd

Running the ElasticSearch feature
---------------------------------

Once the features have been installed, you can change some of its properties. For
example, to setup the URL where your ElasticSearch installation runs,
change the *serverUrl* parameter in tsdr/persistence-elasticsearch/src/main/resources/configuration/initial/:

.. code-block:: bash

    tsdr-persistence-elasticsearch.properties

All the data are stored into the TSDR index under a type. The metric data are
stored under the metric type and the log data are store under the log type.
You can modify the files in tsdr/persistence-elasticsearch/src/main/resources/configuration/initial/:

.. code-block:: bash

    tsdr-persistence-elasticsearch_metric_mapping.json
    tsdr-persistence-elasticsearch_log_mapping.json

to change or tune the mapping for those types. The changes in those files will be promoted after
the feature is reloaded or the distribution is restarted.

Testing the setup
^^^^^^^^^^^^^^^^^

We can now test whether the setup is correct by downloading and installing mininet,
which we use to send some data to the running ElasticSearch instance.

Installing the necessary features:

.. code-block:: bash

    start OpenDaylight
    feature:install odl-restconf odl-l2switch-switch odl-tsdr-core odl-tsdr-openflow-statistics-collector
    feature:install odl-tsdr-elasticsearch

We can check whether the distribution is now listening on port 6653:

.. code-block:: bash

    netstat -an | grep 6653

Run mininet

.. code-block:: bash

    sudo mn --topo single,3 --controller 'remote,ip=distro_ip,port=6653' --switch ovsk,protocols=OpenFlow13

where the distro_ip is the IP address of the machine where the OpenDaylight distribution
is running. This command will create three hosts connected to one OpenFlow capable
switch.

We can check if data was stored by ElasticSearch in TSDR by running the
following command:

.. code-block:: bash

    tsdr:list FLOWTABLESTATS

The output should look similar to the following::

    [NID=openflow:1][DC=FLOWTABLESTATS][MN=ActiveFlows][RK=Node:openflow:1,Table:50][TS=1473427383598][3]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:50][TS=1473427383598][12]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketLookup][RK=Node:openflow:1,Table:50][TS=1473427383598][12]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=ActiveFlows][RK=Node:openflow:1,Table:80][TS=1473427383598][3]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:80][TS=1473427383598][17]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:246][TS=1473427383598][19]
    ...

Or you can query your ElasticSearch instance:

.. code-block:: bash

    curl -XPOST "http://elasticseach_ip:9200/_search?pretty" -d'{ "from": 0, "size": 10000, "query": { "match_all": {} } }'

The elasticseach_ip is the IP address of the server where the ElasticSearch is running.


Web Activity Collector
======================

The Web Activity Collector records the meaningful REST requests made through the
OpenDaylight RESTCONF interface.


How to test the RESTCONF Collector
----------------------------------

- Install some other feature that has a RESTCONF interface, for example. "odl-tsdr-syslog-collector"
- Issue a RESTCONF command that uses either POST,PUT or DELETE.
  For example, you could call the register-filter RPC of tsdr-syslog-collector.
- Look up data in TSDR database from Karaf.

  .. code-block:: bash

    tsdr:list RESTCONF

- You should see the request that you have sent, along with its information
  (URL, HTTP method, requesting IP address and request body)
- Try to send a GET request, then check again, your request should not be
  registered, because the collector does not register GET requests by default.
- Open the file: "etc/tsdr.restconf.collector.cfg", and add GET to the list of
  METHODS_TO_LOG, so that it becomes:

  ::

      METHODS_TO_LOG=POST,PUT,DELETE,GET

  - Try again to issue your GET request, and check if it was recorded this time,
    it should be recorder.
  - Try manipulating the other properties (PATHS_TO_LOG (which URLs do we want
    to log from), REMOTE_ADDRESSES_TO_LOG (which requesting IP addresses do we
    want to log from) and CONTENT_TO_LOG (what should be in the request's body
    in order to log it)), and see if the requests are getting logged.
  - Try providing invalid properties (unknown methods for the METHODS_TO_LOG
    parameter, or the same method repeated multiple times, and invalid regular
    expressions for the other parameters), then check karaf's log using
    "log:display". It should tell you that the value is invalid, and that it
    will use the default value instead.
