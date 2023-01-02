#############################
Build Time Testing with JUnit
#############################



Introduction to JUnit
=====================

JUnit is a framework for writing build time tests.
See their home page http://junit.org/ for more information.

Build time tests are tests which run during the compilation phase of
your project. Build time tests provide a way for a developer to quickly
test (in isolation) the logic which belongs to a given project to verify
it is behaving as desired.

Below we will provide the basics of JUnit tests and how you can use them,
along with recommendations of how to write JUnit tests.

Additionally JUnit integrates nicely with the Eclipse and Idea frameworks
to provide launching and debugging unit tests from within the IDE framework.

Qualities of a Good Unit Test
=============================

A good unit test will:

#. Run quickly

   -  No sleeps or thread blocking if you can avoid it

#. Run against the public API's of a class (think interfaces!)
#. Test a "single" unit of work

   -  Unit tests generally test an isolated piece of functionality.
      Integration tests are used to test the interaction between two
      pieces of logic.
   -  You can have multiple tests in a single test class, each testing a
      different piece of functionality... more on that later.

#. Contain assertions which validate the functionality

To help get an idea if you tested all of your code you can use Code
Coverage tools to review your code coverage. One such tools is `EclEmma <https://www.eclemma.org>`__
for eclipse which provides a mechanism to visually report the code coverage of
or more unit tests.

Running a JUnit Test
====================

Command Line
~~~~~~~~~~~~

To run a JUnit tests via the command line you only need to run:

``mvn test``

However, that only runs the tests, it doesn't recompile them. In general
running

``mvn clean install``

is the best way as it rebuilds your bundle and then executes any JUnit
tests.

Eclipse
~~~~~~~

To run a JUnit tests via Eclipse, you can select the method, class,
package, or source folder, right click it, and select *"Run As" -> "JUnit
Test"*. The JUnit tests will now execute and an overview can bee seen in
the JUnit view.

Debugging a Test
================

To debug a JUnit test via Eclipse, simply place your breakpoints as
expected, and then right click the test method and choose *"Debug As" ->
"JUnit Test"*. The test will start and will pause when the breakpoint is
hit.

Example Implementation
======================

Below we provide an example of how you can implement a JUnit test in
your code.

Test Name and Package
~~~~~~~~~~~~~~~~~~~~~

A few things to keep in mind when creating a JUnit test class:

-  Your JUnit test **MUST** start with, or end with the word **Test**.
   This is a keyword that the command line maven test invocation
   strategy looks for when deciding if it should inspect a class for
   JUnit annotations. If you class does not start or end with the word
   test it will NOT run via the maven command line and therefore will
   not run during builds either (however you will be able to invoke it
   via eclipse).
-  It is best practice to place the JUnit test in the same package as
   the class that you are testing. This makes it easier to find the
   corresponding tests as well provides access to default members or
   methods if needed.
-  You should try and name your class similar to the class under test
   (often just appending to the end the word "test" or if you have
   multiple test files, then appending a description of each file to the
   end of the file).

Adding JUnit to your Maven Project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add the JUnit dependency to your maven project you simply add this
dependency into the dependencies section of your pom file.

.. code:: xml

   <dependency>
     <groupId>junit</groupId>
     <artifactId>junit</artifactId>
     <version>4.8.1</version>
     <scope>test</scope>
   </dependency>

.. note::
   You can exclude the scope and version tags assuming a parent
   project has defined the dependency in the dependency management
   section.

Creating your Test Class - Annotations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A JUnit test class is simply a java class. We use java annotations to
mark the methods which set up the test and those which define actually
tests.

In order to write a good unit test it is important to understand how
JUnit executes your tests. JUnit will instantiate a new instance of your
test class for each test method (@Test) that is defined in your test class.
This means that non static class variables will be unique per instance of test
method.
This is done to ensure that one test method doesn't unintentionally interfere
with another test in the same class.
Unfortunately this also means that you need to initialize common intelligence
every time which may lead to longer running tests (or messy code)
which is something we want to avoid.
JUnit makes this easier with a few additional annotations.
Below is the flow of a JUnit test test:

#. **@BeforeClass** - This annotation can appear once in a test class on
   a public *static* method which takes no arguments. This provides a
   way to initialize some test data for ALL test methods in your test
   class. A BeforeClass method is intended to set up a static shared
   resource for all methods to use, such as a database connection or in
   our case a repository of yang model definitions (for example).
   In this method you can initialize static class variables for later use.
#. *A new instance of your test class is instantiated* - A new instance of your
   test class is not instantiated so each method can have its own sandbox.
#. **@Before** - This annotation can appear once in a test class on a public
   method which takes no arguments.
   This method is called before EVERY test method.
   It purpose to to provide a location for common initialization logic that each
   test method requires, such as instantiating the class under test and
   performing some generic set up.
   During this step you can class level variables for use in your test methods.
   Note, you do NOT have to worry about synchronization with the class level
   variables initialized here, because each test method has its own copy of the
   variables.
   Of course if your tests deals with concurrency, or you are modifying a static
   resource (not recommended) you may still need to deal with concurrency.
#. **@Test** - See above. At this point one of the @Test annotated methods is
   executed.
#. **@After** - The method with this annotation is executed after the
   @Test annotated method executes. This method is executed regardless
   of the passing or failing of the JUnit test and provides an
   opportunity to clean up after your test, such as deleting temporary
   files or deleting records from a database.
#. *At this point the testing framework will loop back to the @Before on
   a new test class instance to execute the next test method.*
#. **@AfterClass** - this annotation placed on a static method is used
   to clean up the initialization performed in the ``@BeforeClass`` method.
   It is executed once when all @Test methods have been executed.

Here is a sample JUnit test class that illustrates the ordering:

.. code:: java

    package org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test;

    import org.junit.After;
    import org.junit.AfterClass;
    import org.junit.Before;
    import org.junit.BeforeClass;
    import org.junit.Test;

    public class Temp {

       @BeforeClass
       public static void staticInit(){
           System.out.println( "Static Init" );
       }

       @Before
       public void testInit(){
           System.out.println( "Test Init - " + this );
       }

       @Test
       public void testOne(){
           System.out.println( "Test One - " + this );
       }

       @Test
       public void testTwo(){
           System.out.println( "Test Two - " + this );
       }

       @After
       public void testCleanUp(){
           System.out.println( "Test Clean Up - " + this );
       }

       @AfterClass
       public static void staticCleanUp(){
           System.out.println( "Static Clean Up" );
       }

   }

If you execute this through the test framework
you would get output similar to this:


.. code::

   Static Init
   Test Init - org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test.Temp@7476a6d9
   Test One - org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test.Temp@7476a6d9
   Test Clean Up - org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test.Temp@7476a6d9
   Test Init - org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test.Temp@7260c384
   Test Two - org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test.Temp@7260c384
   Test Clean Up - org.opendaylight.controller.sal.restconf.impl.cnsn.to.json.test.Temp@7260c384
   Static Clean Up

Notice that the object address is different for the two initialization calls,
indicating that each test method did indeed receive its own object.

.. note::

   It is important to not rely on the order of execution of the test methods
   when possible.
   JUnit can be configured to execute in parallel test methods from different
   classes but also inside the same class.

   *More details on parallel execution experimental support in Junit5 can be
   found at this URL:*

   *https://junit.org/junit5/docs/current/user-guide/index.html#writing-tests-parallel-execution*

Now that you have a shell for your test framework, its important to discuss
how you indicate failures or passes in your JUnit tests.
For that we need to discuss about assertions.

Validating Your Tests - Assertions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to have a complete unit test it is important to have quality
assertions in your tests which actually validate that the behavior
observed is the behavior that you wanted.

-  **Passing a JUnit Test** - A JUnit test is considered to have passed
   if the method executes and returns without throwing an exception.
-  **Failing a JUnit Test** - A JUnit test will be considered failed if
   an exception is thrown from it. There are a number of libraries that
   have been created to make this easier, most notable the Assert library.

The Assert library is closely tied to the JUnit library and provides
methods to make it easy to validate that the data return is non null,
equals another object etc. For example, if you want to assert that two
objects are equal, you can use the ``eassertEquals( ... )`` method.

.. code:: java

   public void test(){
       Object expectedObj = ...
       Object actualObj = ...
       assertEquals( "Error message if not equal", expectedObj, actualObj );
   }

This is a very common pattern for the assert methods. You can provide a
string which provides a more descriptive error if things are not equal.
Additionally, the Assertion framework will also to string the objects
for comparison if things don't match to provide further information.
Check out the Assert class for all of the other combinations:
https://junit.org/junit4/javadoc/latest/org/junit/Assert.html

.. note::
   It is a good idea to use the most appropriate method for your assertions.
   For example you can assert equality by simply doing
   ``assertTrue( expectedObj.equals( actualObj ) )``.
   However the assert methods will do additional things like null checks,
   and printing out more detailed information on the error
   if the assertion does not pass.
   So in this case, using ``assertEquals`` is better as it would null check and
   print the values of the expected and actual objects for you automatically,
   making the act of asserting really easy!.

Concurrency in Unit test
~~~~~~~~~~~~~~~~~~~~~~~~

In general, it is easier to avoid having multiple threads in your unit tests
for a few reasons:

#. JUnit will only fail if an exception is thrown in the primary thread
   which it is executing your test from - exceptions thrown on other
   threads will not cause the test to fail!
#. Tests will slow down when other threads get spawned and you will
   start competing for system resources.
#. You have to deal with all of the other concurrency issues in your
   test that you do else where (waiting for threads, synchronizing
   objects etc) which makes the test harder to read.

If you do find that you need to deal with multiple threads in your test
then you will need to take great care to make sure you are handling
uncaught exceptions etc. If the class you are testing uses thread pools
it is a good idea to refactor your test to pass in a ThreadPool instead
of instantiate your own thread pool. If you do that, then you can use
one of the following options to avoid multiple threads:

-  Pass in a thread pool executor that executes the ``runnable`` / ``callable``
   on the same thread
-  Capture the ``runnables`` in a mock executer and then execute the run /
   call method at a later point.

[TODO - need to provide more examples for the above two cases]

Mocking
~~~~~~~

There are a number of frameworks out there which allow you to mock up
objects in your Unit tests to simulate behavior.
Most of these frameworks take advantage of good modular OO design
(i.e. think interfaces, setters, getters etc).
Some example mocking frameworks are:

-  Mockito - https://github.com/mockito/mockito - **Note: Used in
   controller in a number of places**
-  EasyMock - http://easymock.org/

Please refer to these sites for more details. If you have questions
please reach out the mailing lists with questions - if there is enough
interest we will develop more detailed best practices around mocking.
