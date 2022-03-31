Developing apps on the OpenDaylight controller
==============================================

This section provides the information required to develop apps on
an OpenDaylight controller. Apps can be developed either within the
controller using a Model-Driven SAL (MD-SAL) archetype or via an
external app using the RESTCONF API to communicate with the controller.

Overview
--------

This section starts app development within an OpenDaylight controller.

Perform the following steps to develop an app:

1.  Create a local repository for the code using a simple build process.

2.  Start the OpenDaylight controller.

3.  Test a simple remote procedure call (RPC) that was created based on
    the principle of *hello world*.

Prerequisites
-------------

The following are the prerequisites for app creation:

-   A development environment with the following setup and working correctly
    from the shell:

    -   Maven 3.8.3 or later

    -   Java 11-compliant JDK

    -   An appropriate Maven settings.xml file. One way to get the
        default OpenDaylight settings.xml file is:

        .. code:: shell

            cp -n ~/.m2/settings.xml{,.orig}
            wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > ~/.m2/settings.xml

.. note::

    For Linux or Mac OS X development operating systems, the default local
    repository is ~/.m2/repository. For other platforms, the default local
    repository location varies.

Building an Example module
--------------------------

Perform the following steps to develop an app:

1.  Create an *Example* project using Maven and an archetype called the
    *opendaylight-startup-archetype*. For first time downloads, this project
    will take some time to pull all the code from the remote repository.

    .. code:: shell

        mvn archetype:generate -DarchetypeGroupId=org.opendaylight.archetypes \
            -DarchetypeArtifactId=opendaylight-startup-archetype \
            -DarchetypeCatalog=remote -DarchetypeVersion=<VERSION>

    The correct VERSION depends on desired Simultaneous Release:

    .. list-table:: Archetype versions
       :widths: auto
       :header-rows: 1

      * - OpenDaylight Simultaneous Release
        - ``opendaylight-startup-archetype`` version

      * - Magnesium Development
        - 1.3.0-SNAPSHOT

      * - Aluminium Development
        - 1.4.0-SNAPSHOT

2.  Update the properties values. Ensure that the values for the ``groupId`` and
    the ``artifactId`` are in lower case.

    .. code:: text

        Define value for property 'groupId': org.opendaylight.example
        Define value for property 'artifactId': example
        [INFO] Using property: version = 0.1.0-SNAPSHOT
        Define value for property 'package' org.opendaylight.example: :
        Define value for property 'classPrefix' Example: :
        Define value for property 'copyright': Copyright (c) 2021 Yoyodyne, Inc.
        [INFO] Using property: copyrightYear = 2021

3.  Accept the default value of ``classPrefix``, that is:
    ``(${artifactId.substring(0,1).toUpperCase()}${artifactId.substring(1)})``.
    The ``classPrefix`` creates a Java Class Prefix by capitalizing the first
    character of the ``artifactId``.

    .. note::

        This will create a directory with the name given to ``artifactId``
        in the above dialog, with the following contents.

    .. code:: shell

        .gitreview
        api/
        artifacts/
        cli/
        features/
        impl/
        it/
        karaf/
        pom.xml
        src/

4.  Build the *example* project.

    .. note::

        Build time varies depending on the development machine specification.
        Ensure that you are in the project’s root directory (example/,) and then
        issue the the following build command.

    .. code:: shell

        mvn clean install

5.  Initialize the *example* project.

    .. code:: shell

        cd karaf/target/assembly/bin
        ls
        ./karaf

6.  Wait for the Karaf CLI to appear. Wait for OpenDaylight to fully load
    all components. This can take a minute or two after the prompt appears.
    Check the CPU on the dev machine, specifically the Java process to see
    when it slows down.

    .. code:: shell

        opendaylight-user@root>

7.  Verify if the “example” module is built and search for the log entry
    that includes the entry *ExampleProvider Session Initiated*.

    .. code:: shell

        log:display | grep Example

8.  Enter the following command to shutdown OpenDaylight through the console:

    .. code:: shell

        shutdown -f

Defining a simple HelloWorld RPC
--------------------------------

1.  Build a *hello* example from the Maven archetype *opendaylight-startup-archetype*,
    same as what was done in the previous steps.

2.  View the entry point to understand the origins of the log line. The
    entry point starts in the ``./impl`` project:

    .. code:: shell

        impl/src/main/java/org/opendaylight/hello/impl/HelloProvider.java

3.  Add any new content that you are doing in your implementation by
    using the ``HelloProvider.init`` method. It is analogous to an Activator.

    .. code:: java

        /**
         * Method called when the blueprint container is created.
         */
        public void init() {
            LOG.info("HelloProvider Session Initiated");
        }

Add a simple HelloWorld RPC API
-------------------------------

1.  Navigate to ``api/src/main/yang``.

    .. code:: shell

        cd api/src/main/yang/

2.  Edit the ``hello.yang`` file. In the following example, we are adding
    the code in a YANG module to define the *hello-world* RPC:

    .. code::

        module hello {
            yang-version 1.1;
            namespace "urn:opendaylight:params:xml:ns:yang:hello";
            prefix "hello";

            revision "2021-03-21" {
                description "Initial revision of hello model";
            }

            rpc hello-world {
                input {
                    leaf name {
                        type string;
                    }
                }
                output {
                    leaf greeting {
                        type string;
                    }
                }
            }
        }

3.  Return to the ``hello/api`` directory. Do the following to build the API:

    .. code:: shell

        cd ../../../
        mvn clean install

Implement the HelloWorld RPC API
--------------------------------

1.  Define the HelloService that was invoked through the *hello-world* API.

    .. code:: shell

        cd ../impl/src/main/java/org/opendaylight/hello/impl/

    The ``HelloProvider.java`` file is in the current directory. Register the
    RPC that you created in the *hello.yang* file in the
    ``HelloProvider.java`` file. You can either edit the ``HelloProvider.java``
    to match what is below or simply replace it with the code below.

    .. code:: java

        /*
         * Copyright © 2021 Copyright (c) 2021 Yoyodyne, Inc. and others.  All rights reserved.
         *
         * This program and the accompanying materials are made available under the
         * terms of the Eclipse Public License v1.0 which accompanies this distribution,
         * and is available at http://www.eclipse.org/legal/epl-v10.html
         */
        package org.opendaylight.hello.impl;

        import com.google.common.util.concurrent.ListenableFuture;
        import org.opendaylight.mdsal.binding.api.DataBroker;
        import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev210321.HelloService;
        import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev210321.HelloWorldInput;
        import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev210321.HelloWorldOutput;
        import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev210321.HelloWorldOutputBuilder;
        import org.opendaylight.yangtools.yang.common.RpcResult;
        import org.opendaylight.yangtools.yang.common.RpcResultBuilder;
        import org.slf4j.Logger;
        import org.slf4j.LoggerFactory;

        public class HelloProvider implements HelloService {

            private static final Logger LOG = LoggerFactory.getLogger(HelloProvider.class);

            private final DataBroker dataBroker;

            public HelloProvider(final DataBroker dataBroker) {
                this.dataBroker = dataBroker;
            }

            @Override
            public ListenableFuture<RpcResult<HelloWorldOutput>> helloWorld(HelloWorldInput input) {
                HelloWorldOutputBuilder helloBuilder = new HelloWorldOutputBuilder();
                helloBuilder.setGreeting("Hello " + input.getName());
                return RpcResultBuilder.success(helloBuilder.build()).buildFuture();
            }

            /**
             * Method called when the blueprint container is created.
             */
            public void init() {
                LOG.info("HelloProvider Session Initiated");
            }

            /**
             * Method called when the blueprint container is destroyed.
             */
            public void close() {
                LOG.info("HelloProvider Closed");
            }
        }

2.  Update Blueprint XML file.

    .. code:: shell

        cd ../../../../../resources/OSGI-INF/blueprint/

    You can either edit the ``impl-blueprint.xml`` to match what is below
    or simply replace it with the XML below.

    .. code:: xml

        <?xml version="1.0" encoding="UTF-8"?>
        <!-- vi: set et smarttab sw=4 tabstop=4: -->
        <!--
        Copyright © 2021 Copyright (c) 2021 Yoyodyne, Inc. and others. All rights reserved.

        This program and the accompanying materials are made available under the
        terms of the Eclipse Public License v1.0 which accompanies this distribution,
        and is available at http://www.eclipse.org/legal/epl-v10.html
        -->
        <blueprint xmlns="http://www.osgi.org/xmlns/blueprint/v1.0.0"
          xmlns:odl="http://opendaylight.org/xmlns/blueprint/v1.0.0"
          odl:use-default-for-reference-types="true">

          <reference id="dataBroker"
            interface="org.opendaylight.mdsal.binding.api.DataBroker"
            odl:type="default" />

          <bean id="provider"
            class="org.opendaylight.hello.impl.HelloProvider"
            init-method="init" destroy-method="close">
            <argument ref="dataBroker" />
          </bean>

          <odl:rpc-implementation ref="provider"/>

        </blueprint>

3.  Optionally, users can build the Java classes that will register
    the new RPC. This is useful to test the edits that were made to
    ``HelloProvider.java``.

    .. code:: shell

        cd ../../../../../
        mvn clean install

4.  Return to the top level directory

    .. code:: shell

        cd ../

5.  Build the entire *hello* again. This will pickup the new changes,
    and then build them into the project:

    .. code:: shell

        mvn clean install

Execute the *hello* project for the first time
----------------------------------------------

1.  Run karaf

    .. code:: shell

        cd karaf/target/assembly/bin
        ./karaf

2.  Wait for the project to load completely. Then view the log to see the
    loaded *Hello* Module:

    .. code:: shell

        log:display | grep Hello

Test the *hello-world* RPC via REST
-----------------------------------

There are a lot of ways to test a RPC. The following are a few examples.

1.  Using the API Explorer through HTTP

2.  Using a browser REST client

Using the API Explorer through HTTP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1.  Navigate to `apidoc
    UI <http://localhost:8181/apidoc/explorer/index.html>`__ with your
    web browser.

    .. note::

        In the URL link for *apidoc UI*, change *localhost* to the IP/Host
        name to reflect your development machine’s network address.

2.  Enter the username and password.
    By default the credentials are  *admin/admin*.

3.  Select

    .. code:: shell

        hello

4.  Select

    ::

        POST /rests/operations/hello:hello-world

5.  Click on the **Try it out** button.

6.  Provide the required request input.

    .. code:: json

        {
          "input": {
            "name": "Your Name"
          }
        }


7.  Select **application/json** for *Media type* in the *Responses* section.

8.  Click the **Execute** button.

9.  In the response body you should see

    .. code:: json

        {
          "hello:output": {
            "greeting": "Hello Your Name"
          }
        }


Using a browser REST client
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Next, use a browser to POST a REST client request.
For example, use the following information in the Firefox plugin:

*RESTClient* `https://github.com/chao/RESTClient <https://github.com/chao/RESTClient>`_

::

    POST: http://localhost:8181/rests/operations/hello:hello-world

Header:

::

    Accept: application/json
    Content-Type: application/json
    Authorization: Basic admin admin

Body:

.. code:: json

    {
      "input": {
        "name": "Your Name"
      }
    }

In the response body you should see:

.. code:: json

    {
      "hello:output": {
        "greeting": "Hello Your Name"
      }
    }

Troubleshooting
---------------

If you get a response code 500 while attempting to
``POST /rests/operations/hello:hello-world``, check the file:
``impl/src/main/resources/OSGI-INF/blueprint/impl-blueprint.xml``
and make sure the following element is specified for ``<blueprint>``.

.. code:: xml

    <odl:rpc-implementation ref="provider"/>
