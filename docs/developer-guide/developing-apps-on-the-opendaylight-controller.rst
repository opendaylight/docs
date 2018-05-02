Developing Apps on the OpenDaylight controller
==============================================

This section provides information that is required to develop apps on
the OpenDaylight controller.

You can either develop apps within the controller using the model-driven
SAL (MD-SAL) archetype or develop external apps and use the RESTCONF to
communicate with the controller.

Overview
--------

This section enables you to get started with app development within the
OpenDaylight controller. In this example, you perform the following
steps to develop an app.

1. Create a local repository for the code using a simple build process.

2. Start the OpenDaylight controller.

3. Test a simple remote procedure call (RPC) which you have created
   based on the principle of *hello world*.

Pre requisites
--------------

This example requires the following.

-  A development environment with following set up and working correctly
   from the shell:

   -  Maven 3.1.1 or later

   -  Java 7- or Java 8-compliant JDK

   -  An appropriate Maven settings.xml file. A simple way to get the
      default OpenDaylight settings.xml file is:

      ::

          cp -n ~/.m2/settings.xml{,.orig} ; wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > ~/.m2/settings.xml

.. note::

    If you are using Linux or Mac OS X as your development OS, your
    local repository is ~/.m2/repository. For other platforms the local
    repository location will vary.

Building an example module
--------------------------

To develop an app perform the following steps.

1. Create an *Example* project using Maven and an archetype called the
   *opendaylight-startup-archetype*. If you are downloading this project
   for the first time, then it will take sometime to pull all the code
   from the remote repository.

   .. code:: shell

       mvn archetype:generate -DarchetypeGroupId=org.opendaylight.controller -DarchetypeArtifactId=opendaylight-startup-archetype \
       -DarchetypeRepository=https://nexus.opendaylight.org/content/repositories/<opendaylight.release | opendaylight.snapshot>/ \
       -DarchetypeCatalog=remote -DarchetypeVersion=<Archetype-Version>

   To find the correct <Archetype-Version> for an OpenDaylight release, search https://nexus.opendaylight.org for the
   ``archetypeArtifactId`` (e.g. ``https://nexus.opendaylight.org/#nexus-search;quick~opendaylight-startup-archetype``); and if it's a
   ``*-SNAPSHOT`` then use ``-DarchetypeRepository=https://nexus.opendaylight.org/content/repositories/opendaylight.snapshot/``, otherwise
   use ``-DarchetypeRepository=https://nexus.opendaylight.org/content/repositories/opendaylight.release/``.

2. Update the properties values as follows. Ensure that the groupid and
   the artifactid is lower case.

   .. code:: shell

       Define value for property 'groupId': : org.opendaylight.example
       Define value for property 'artifactId': : example
       Define value for property 'version':  1.0-SNAPSHOT: : 1.0.0-SNAPSHOT
       Define value for property 'package':  org.opendaylight.example: :
       Define value for property 'classPrefix':  ${artifactId.substring(0,1).toUpperCase()}${artifactId.substring(1)}
       Define value for property 'copyright': : Copyright (c) 2015 Yoyodyne, Inc.

3. Accept the default value of classPrefix that is,
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

       Depending on your development machine’s specification this might
       take a little while. Ensure that you are in the project’s root
       directory, example/, and then issue the build command, shown
       below.

   .. code:: shell

       mvn clean install

5. Start the *example* project for the first time.

   .. code:: shell

       cd karaf/target/assembly/bin
       ls
       ./karaf

6. Wait for the karaf cli that appears as follows. Wait for OpenDaylight
   to fully load all the components. This can take a minute or two after
   the prompt appears. Check the CPU on your dev machine, specifically
   the Java process to see when it calms down.

   .. code:: shell

       opendaylight-user@root>

7. Verify if the “example” module is built and search for the log entry
   which includes the entry *ExampleProvider Session Initiated*.

   .. code:: shell

       log:display | grep Example

8. Shutdown the OpenDaylight through the console by using the following
   command.

   .. code:: shell

       shutdown -f

Defining a Simple Hello World RPC
---------------------------------

1.  | Run the maven archetype *opendaylight-startup-archetype*, and
      create the *hello* project.

    .. code:: shell

        mvn archetype:generate -DarchetypeGroupId=org.opendaylight.controller -DarchetypeArtifactId=opendaylight-startup-archetype \
        -DarchetypeRepository=http://nexus.opendaylight.org/content/repositories/opendaylight.snapshot/ \
        -DarchetypeCatalog=http://nexus.opendaylight.org/content/repositories/opendaylight.snapshot/archetype-catalog.xml

2.  Update the Properties values as follows.

    .. code:: shell

        Define value for property 'groupId': : org.opendaylight.hello
        Define value for property 'artifactId': : hello
        Define value for property 'version':  1.0-SNAPSHOT: : 1.0.0-SNAPSHOT
        Define value for property 'package':  org.opendaylight.hello: :
        Define value for property 'classPrefix':  ${artifactId.substring(0,1).toUpperCase()}${artifactId.substring(1)}
        Define value for property 'copyright': : Copyright(c) Yoyodyne, Inc.

3.  View the *hello* project.

    .. code:: shell

        cd hello/
        ls -1
        api
        artifacts
        features
        impl
        karaf
        pom.xml

4.  Build *hello* project by using the following command.

    .. code:: shell

        mvn clean install

5.  Verify that the project is functioning by executing karaf.

    .. code:: shell

        cd karaf/target/assembly/bin
        ./karaf

6.  | The karaf cli appears as follows.
    | NOTE: Remember to wait for OpenDaylight to load completely. Verify
      that the Java process CPU has stabilized.+

    .. code:: shell

        opendaylight-user@root>

7.  Verify that the *hello* module is loaded by checking the log.

    .. code:: shell

        log:display | grep Hello

8.  Shutdown karaf.

    .. code:: shell

        shutdown -f

9.  Return to the top of the directory structure:

    .. code:: shell

        cd ../../../../

10. View the entry point to understand where the log line came from. The
    entry point is in the impl project:

    .. code:: shell

        impl/src/main/java/org/opendaylight/hello/impl/HelloProvider.java

11. Add any new things that you are doing in your implementation by
    using the HelloProvider.onSessionInitiate method. Its analogous to
    an Activator.

    .. code:: java

        @Override
            public void onSessionInitiated(ProviderContext session) {
                LOG.info("HelloProvider Session Initiated");
            }

Add a simple HelloWorld RPC API
-------------------------------

1. Navigate to the file.

   ::

       Edit
       api/src/main/yang/hello.yang

2. Edit this file as follows. In the following example, we are adding
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
                   leaf greating {
                       type string;
                   }
               }
           }
       }

3. Return to the hello/api directory and build your API as follows.

   .. code:: shell

       cd ../../../
       mvn clean install

Implement the HelloWorld RPC API
--------------------------------

1. Define the HelloService, which is invoked through the *hello-world*
   API.

   .. code:: shell

       cd ../impl/src/main/java/org/opendaylight/hello/impl/

2. Create a new file called HelloWorldImpl.java and add in the code
   below.

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
               helloBuilder.setGreating("Hello " + input.getName());
               return RpcResultBuilder.success(helloBuilder.build()).buildFuture();
           }
       }

3. The HelloProvider.java file is in the current directory. Register the
   RPC that you created in the *hello.yang* file in the
   HelloProvider.java file. You can either edit the HelloProvider.java
   to match what is below or you can simple replace it with the code
   below.

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

4. Optionally, you can also build the Java classes which will register
   the new RPC. This is useful to test the edits you have made to
   HelloProvider.java and HelloWorldImpl.java.

   .. code:: shell

       cd ../../../../../../../
       mvn clean install

5. Return to the top level directory

   .. code:: shell

       cd ../

6. Build the entire *hello* again, which will pickup the changes you
   have made and build them into your project:

   .. code:: shell

       mvn clean install

Execute the *hello* project for the first time
----------------------------------------------

1. Run karaf

   .. code:: shell

       cd ../karaf/target/assembly/bin
       ./karaf

2. Wait for the project to load completely. Then view the log to see the
   loaded *Hello* Module:

   .. code:: shell

       log:display | grep Hello

Test the *hello-world* RPC via REST
-----------------------------------

There are a lot of ways to test your RPC. Following are some examples.

1. Using the API Explorer through HTTP

2. Using a browser REST client

Using the API Explorer through HTTP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. | Navigate to `apidoc
     UI <http://localhost:8181/apidoc/explorer/index.html>`__ with your
     web browser.
   | NOTE: In the URL mentioned above, Change *localhost* to the IP/Host
     name to reflect your development machine’s network address.

2. Select

   .. code:: shell

       hello(2015-01-05)

3. Select

   ::

       POST /operations/hello:hello-world

4. Provide the required value.

   .. code:: json

       {"hello:input": { "name":"Your Name"}}

5. Click the button.

6. Enter the username and password, by default the credentials are
   admin/admin.

7. In the response body you should see.

   .. code:: json

       {
         "output": {
           "greating": "Hello Your Name"
         }
       }

Using a browser REST client
~~~~~~~~~~~~~~~~~~~~~~~~~~~

| For example, use the following information in the Firefox plugin
  *RESTClient*
  [`https://github.com/chao/RESTClient} <https://github.com/chao/RESTClient}>`__

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
---------------

If you get a response code 501 while attempting to POST
/operations/hello:hello-world, check the file: HelloProvider.java and
make sure the helloService member is being set. By not invoking
"session.addRpcImplementation()" the REST API will be unable to map
/operations/hello:hello-world url to HelloWorldImpl.

