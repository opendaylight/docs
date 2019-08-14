Developing Apps on the OpenDaylight controller
==============================================

This section provides information that is required to develop apps on
an OpenDaylight controller. Apps can be developed either within the 
controller using the Model-Driven SAL (MD-SAL) archetype or via 
external apps using the RESTCONF to communicate with the controller.

Overview
--------
This section starts app development within an OpenDaylight controller. 
Perform the following steps to develop an app.

1. Create a local repository for the code using a simple build process.

2. Start the OpenDaylight controller.

3. Test a simple remote procedure call (RPC) that was created based on
   the principle of *hello world*.

Prerequisites
--------------
The following are the prerequires for app creation:

-  A development environment with the following setup and working correctly
   from the shell:

   -  Maven 3.5.2 or later

   -  Java 8-compliant JDK

   -  An appropriate Maven settings.xml file. One way to get the
      default OpenDaylight settings.xml file is:

      ::

          cp -n ~/.m2/settings.xml{,.orig} ; wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > ~/.m2/settings.xml

.. note::

    For Linux or Mac OS X development operating systems, the local
    repository is ~/.m2/repository. For other platforms, the local
    repository location varies.

Building an Example Module
-----------------------------
Perform the following steps to develop an app:

1. Create an *Example* project using Maven and an archetype called the
   *opendaylight-startup-archetype*. For first time downloads, this project
   will take sometime to pull all the code from the remote repository.

   .. code:: shell

       mvn archetype:generate -DarchetypeGroupId=org.opendaylight.archetypes -DarchetypeArtifactId=opendaylight-startup-archetype \
       -DarchetypeCatalog=remote -DarchetypeVersion=<VERSION>

   The correct VERSION depends on desired Simultaneous Release:

   .. list-table:: Archetype versions
      :widths: auto
      :header-rows: 1

      * - OpenDaylight Simultaneous Release
        - opendaylight-startup-archetype version

      * - Sodium Development
        - 1.2.0-SNAPSHOT

2. Update the properties values. Ensure that the values for the groupId and
   the artifactId are in lower case.

   .. code:: shell

       Define value for property 'groupId': : org.opendaylight.example
       Define value for property 'artifactId': : example
       Define value for property 'version':  1.0-SNAPSHOT: : 1.0.0-SNAPSHOT
       Define value for property 'package':  org.opendaylight.example: :
       Define value for property 'classPrefix':  ${artifactId.substring(0,1).toUpperCase()}${artifactId.substring(1)}
       Define value for property 'copyright': : Copyright (c) 2015 Yoyodyne, Inc.

3. Accept the default value of classPrefix, that is:
   ``(${artifactId.substring(0,1).toUpperCase()}${artifactId.substring(1)})``.
   The classPrefix creates a Java Class Prefix by capitalizing the first
   character of the artifactId.

   .. note::

       In this scenario, the classPrefix used is "Example". Create a
       top-level directory for the archetype.

   .. code:: shell

       ${artifactId}/
       example/
       cd example/
       api/
       artifacts/
       features/
       impl/
       karaf/
       pom.xml

4. Build the *example* project.

   .. note::

       Build time varies depending on the development machine’s specification.
       Ensure that you are in the project’s root directory (example/,) and then 
       issue the the following build command.

   .. code:: shell

       mvn clean install

5. Initialize the *example* project.

   .. code:: shell

       cd karaf/target/assembly/bin
       ls
       ./karaf

6. Wait for the Karaf CLI to appears. Wait for OpenDaylight to fully load
   all components. This can take a minute or two after the prompt appears. 
   Check the CPU on the dev machine, specifically the Java process to see 
   when it slows down.

   .. code:: shell

       opendaylight-user@root>

7. Verify if the “example” module is built and search for the log entry
   that includes the entry *ExampleProvider Session Initiated*.

   .. code:: shell

       log:display | grep Example

8. Enter the following command to shutdown OpenDaylight through the console:

   .. code:: shell

       shutdown -f

Defining a Simple Hello World RPC
---------------------------------

1.  Build a *hello* example from the Maven archetype *opendaylight-startup-archetype*,
    same as what was done in the previous steps.

2.  View the entry point to understand the origins of the log line. The
    entry point starts in the ./impl project:

    .. code:: shell

        impl/src/main/java/org/opendaylight/hello/impl/HelloProvider.java

3.  Add any new content that you are doing in your implementation by
    using the HelloProvider.onSessionInitiate method. It is analogous to
    an Activator.

    .. code:: java

        @Override
            public void onSessionInitiated(ProviderContext session) {
                LOG.info("HelloProvider Session Initiated");
            }

Add a Simple HelloWorld RPC API
-------------------------------

1. Navigate to the file.

   ::

       Edit
       api/src/main/yang/hello.yang

2. Edit this file. In the following example, we are adding
   the code in a YANG module to define the *hello-world* RPC:

   .. code::

       module hello {
           yang-version 1;
           namespace "urn:opendaylight:params:xml:ns:yang:hello";
           prefix "hello";
           revision "2015-01-05" {
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

3. Return to the hello/api directory. Do the following to build the API:

   .. code:: shell

       cd ../../../
       mvn clean install

Implement the HelloWorld RPC API
--------------------------------

1. Define the HelloService that was invoked through the *hello-world* API.

   .. code:: shell

       cd ../impl/src/main/java/org/opendaylight/hello/impl/

2. Create a new file called *HelloWorldImpl.java*. Add it in the code:

   .. code:: java

       package org.opendaylight.hello.impl;

       import java.util.concurrent.Future;
       import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev150105.HelloService;
       import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev150105.HelloWorldInput;
       import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev150105.HelloWorldOutput;
       import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev150105.HelloWorldOutputBuilder;
       import org.opendaylight.yangtools.yang.common.RpcResult;
       import org.opendaylight.yangtools.yang.common.RpcResultBuilder;

       public class HelloWorldImpl implements HelloService {

           @Override
           public Future<RpcResult<HelloWorldOutput>> helloWorld(HelloWorldInput input) {
               HelloWorldOutputBuilder helloBuilder = new HelloWorldOutputBuilder();
               helloBuilder.setGreeting("Hello " + input.getName());
               return RpcResultBuilder.success(helloBuilder.build()).buildFuture();
           }
       }

3. The *HelloProvider.java* file is in the current directory. Register the
   RPC that was created in the *hello.yang* file in the HelloProvider.java 
   file. Either edit the HelloProvider.java to match what it is or replace
   it with the following code.

   .. code:: java

       /*
        * Copyright(c) Yoyodyne, Inc. and others.  All rights reserved.
        *
        * This program and the accompanying materials are made available under the
        * terms of the Eclipse Public License v1.0 which accompanies this distribution,
        * and is available at http://www.eclipse.org/legal/epl-v10.html
        */
       package org.opendaylight.hello.impl;

       import org.opendaylight.controller.sal.binding.api.BindingAwareBroker.ProviderContext;
       import org.opendaylight.controller.sal.binding.api.BindingAwareBroker.RpcRegistration;
       import org.opendaylight.controller.sal.binding.api.BindingAwareProvider;
       import org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.hello.rev150105.HelloService;
       import org.slf4j.Logger;
       import org.slf4j.LoggerFactory;

       public class HelloProvider implements BindingAwareProvider, AutoCloseable {

           private static final Logger LOG = LoggerFactory.getLogger(HelloProvider.class);
           private RpcRegistration<HelloService> helloService;

           @Override
           public void onSessionInitiated(ProviderContext session) {
               LOG.info("HelloProvider Session Initiated");
               helloService = session.addRpcImplementation(HelloService.class, new HelloWorldImpl());
           }

           @Override
           public void close() throws Exception {
               LOG.info("HelloProvider Closed");
               if (helloService != null) {
                   helloService.close();
               }
           }
       }

4. Optionally, users can build the Java classes that will register
   the new RPC. This is useful to test the edits that was made to
   HelloProvider.java and HelloWorldImpl.java.

   .. code:: shell

       cd ../../../../../../../
       mvn clean install

5. Return to the top level directory.

   .. code:: shell

       cd ../

6. Build the entire *hello* again. This will pickup the new changes,
   and then build them into the project:

   .. code:: shell

       mvn clean install

Execute the *hello* Project for the First Time
-----------------------------------------------

1. Run karaf

   .. code:: shell

       cd ../karaf/target/assembly/bin
       ./karaf

2. Wait for the project to load completely. Then, view the log to see the
   loaded *Hello* Module:

   .. code:: shell

       log:display | grep Hello

Test the *hello-world* RPC via REST
-----------------------------------
There are a lot of ways to test a RPC. The following are a few examples.

1. Using the API Explorer through HTTP.

2. Using a browser REST client.

Using the API Explorer Through HTTP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Navigate to the `apidoc
     UI <http://localhost:8181/apidoc/explorer/index.html>`.

.. note::   

   In the previous URL, change *localhost* to the IP/Host name to 
   reflect the development machine’s network address.

2. Select the following:

   .. code:: shell

       hello(2015-01-05)

3. Select the following:

   ::

       POST /operations/hello:hello-world

4. Provide the required value.

   .. code:: json

       {"hello:input": { "name":"Your Name"}}

5. Click the button.

6. Enter the username and password. By default, the credentials are
   *admin/admin*.

7. The following should appear in the response body.

   .. code:: json

       {
         "output": {
           "greeting": "Hello Your Name"
         }
       }

Using a Browser REST Client
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Next, use a browser to POST a REST client. For example, use the following 
information in the Firefox plugin
  *RESTClient*
  `https://github.com/chao/RESTClient <https://github.com/chao/RESTClient>`_

::

    POST: http://192.168.1.43:8181/restconf/operations/hello:hello-world

Header:

::

    application/json

Body:

.. code:: json

    {"input": {
        "name": "Andrew"
      }
    }

Troubleshooting
------------------
If a response code *501* appears while attempting to POST
/operations/hello:hello-world, check the file: HelloProvider.java and
ensure the helloService member is being set. By not invoking
"session.addRpcImplementation()", the REST API will be unable to map
/operations/hello:hello-world url to HelloWorldImpl.
