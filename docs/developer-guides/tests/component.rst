.. _component:

############################
Component Tests (with Guice)
############################

*Note: This document is a work in progress.*

Introduction
============

Code which uses `dependency injection with standard
annotations <https://wiki-archive.opendaylight.org/view/BestPractices/DI_Guidelines>`__
is well suite for component tests.

Component tests cover the functionality of 1 single OpenDaylight bundle (e.g.
netvirt ``aclservice``, genius ``interfacemanager``, etc.) They are focused
on end-to-end testing of APIs, not individual internal implementation
classes (that's what Unit Tests are for). They focus on testing the code
in their own module, and typically stub required external services. They
assert outcome on the system, often those external services, and the
data store. They wire together the internal beans through a Dependency
Injection (DI) Framework called Guice, which leverages standard Java
annotations in the code, which is equally used by Blueprints.

This `presentation from the ODL Summit
2016 <https://docs.google.com/presentation/d/1bnwj8CrFGo5KekONYSeIHySdkoXZiewJxkHcZjXnzkQ/edit#slide=id.g17d8ae4d92_0_137>`__
has some content related to this topic.

Maven
=====

In order to use Google Guice in your end2end API component tests to wire
bean objects using the same annotations as BP, use:

.. code:: xml

   <dependency>
     <groupId>org.opendaylight.infrautils</groupId>
     <artifactId>inject.guice.testutils</artifactId>
     <version>${infrautils.version}</version>
     <scope>test</scope>
   </dependency>

Code
====

Object Wiring Binding
---------------------

You can write Guice object binding wiring classes like this:

.. code:: java

   public class AclServiceModule extends AbstractGuiceJsr250Module {
       @Override
       protected void configureBindings() {
           bind(AclServiceManager.class).to(AclServiceManagerImpl.class);
           bind(AclInterfaceStateListener.class);
       }
       ...
   }

for any OSGi service external to the bundle (not local bean) you use
bind() like this:

.. code:: text

   bind(DataTreeEventCallbackRegistrar).annotatedWith(OsgiService.class).to(DataTreeEventCallbackRegistrarImpl.class)

JUnit with GuiceRule
--------------------

Use \*Module classes which define Object Wiring Binding in a JUnit \* Test class
like this:

.. code:: java

   public @Rule MethodRule guice = new GuiceRule(AclServiceModule.class, AclServiceTestModule.class);

   @Inject DataBroker dataBroker;
   @Inject AclServiceManager mdsalApiManager;
   @Inject AclInterfaceStateListener mdsalApiManager;

Async
=====

In these Component Tests (more so than in simple Unit Tests), one often
hits problems due to the extensive use of highly asynchronous code in
ODL. Some progress has been made with testing utilities for each
respective async API, detailed in this chapter.

genius AsyncClusteredDataTreeChangeListenerBase & AsyncDataTreeChangeListenerBase
----------------------------------------------------------------------------------

In order to make a test wait for something which happens in a
AsyncClusteredDataTreeChangeListenerBase or
AsyncDataTreeChangeListenerBase subclass before then asserting on the
outcome of what happened, you just add the
TestableDataTreeChangeListenerModule to the GuiceRule of your \*Test,
and then ``@Inject AsyncEventsWaiter asyncEventsWaiter``, and use
``awaitEventsConsumption()`` AFTER having done action like a data store
write for which a listener should kick in, and BEFORE reading the
datastore to check the effect:

.. code:: java

   public final @Rule MethodRule guice = new GuiceRule(
       new YourTestModule(),
       new TestableDataTreeChangeListenerModule());
   @Inject AsyncEventsWaiter asyncEventsWaiter;
   asyncEventsWaiter.awaitEventsConsumption();

If a AsyncClusteredDataTreeChangeListenerBase or
AsyncDataTreeChangeListenerBase (subclass) has "fired", then the
AsyncEventsWaiter verifies that a test has indeed used
``awaitEventsConsumption()`` - and fails the test with
IllegalStateException: Test forgot an ``awaitEventsConsumption()`` if it
does not. This mechanism ensures that a test does not "forget" to
``awaitEventsConsumption`` and assert an expected outcome. NB however that
if the test runs fast, it may end before the listeners kicked in, and
the IllegalStateException may not always been seen (i.e. leading to a
``"heisenbug"``, found with the RunUntilFailureRule). Therefore, if in your
test you do not need to ``awaitEventsConsumption()`` at all, then you should
not use the TestableDataTreeChangeListenerModule. However, this is
likely an indication of lack of better test coverage in your test - you
probably do want to assert on the effect of your
AsyncClusteredDataTreeChangeListenerBase or
AsyncDataTreeChangeListenerBase subclasses?

infrautils JobCoordinator (formerly genius DataStoreJobCoordinator)
---------------------------------------------------------------------

similarly to above, using the JobCoordinatorEventsWaiter:

.. code:: text

   @Inject JobCoordinatorEventsWaiter coordinatorEventsWaiter;
   coordinatorEventsWaiter.awaitEventsConsumption();
   (TODO still need to be ported from genius to infrautils)
   (TODO need to write a combined AsyncEventsWaiter instead of doing e.g. InterfaceManagerTestUtil's waitTillOperationCompletes)

It is HIGHLY (!) recommended to FIRST switch code from the @Deprecated
DataStoreJobCoordinator (in genius) to the JobCoordinator (in
infrautils), because that does not suffer from the problem where a
background job can "continue on" from one @Test method into another
@Test, or even from one \*Test class into another, due to use of
"static", which can lead to VERY confusing log messages.

genius ResourceBatchingManager
-------------------------------

The ResourceBatchingManager API does not yet have an AsyncEventsWaiter
companion.

Other
-----

Some of our "new style" Component Tests, such as e.g.
InterfaceManagerConfigurationTest, and others, still need Thread.sleep()
in some places.. the eventual goal is to be able to eventually
completely eliminate them from all tests.

Tutorial
========

Let's imagine you want to make a change e.g. in ``aclservice``, just as an
example. Specifically, you've added a new argument for another new
internal bean or external service to the @Singleton
AclServiceManagerImpl @Inject annotated constructor, let's say to an
IdManagerService for the sake of this example discussion.

A component test based on Guice wiring, such as AclServiceTest, will now
fail on you with a message saying something like this:

*No implementation for (...your new service...) was bound while locating
(...) for the X-th parameter of AclServiceManagerImpl.*

The \*Module classes referenced from the GuiceRule in a \*Test is where
the wiring is defined - that's what determines, for that test, what
implementation class is bound to what service interface etc. If you have
a look at e.g. the AclServiceModule & AclServiceTestModule, it should be
obvious what that does - just 1 single line for each binding.

The error message shown above simply means that an interface was
encountered but you have not specified what implementation you would
like to use for that interface in a given test. (Different tests could
have different Module with varying bindings; but don't have to.)

To fix this after having made your change, you would now have to add 1
line in AclServiceTestModule to do a bind() of IdManagerService to...
something.

If IdManagerServiceas was some new internal helper class of ``aclservice``
which you would like to test, then you would just do:

.. code:: java

   bind(IdManagerService.class).to(YOURIdManagerServiceImpl.class);

The YOURIdManagerServiceImpl would have a @Singleton annotation on its
class, and have an @Inject annotation on its constructor, to
automatically get its dependencies injected (and perhaps have
``@PostConstruct`` and ``@PreDestroy``, if it has a ``"lifecycle"``; or extend
AbstractLifecycle). This is further documented on the `DI
Guidelines <https://wiki-archive.opendaylight.org/view/BestPractices/DI_Guidelines>`__
page.

Now, in the case of an existing ODL service from another project, you
typically didn't actually write your own implementation of the
IdManagerService interface. At full system runtime, you probably would
like that to use the IdManager class (and you probably added that to
your BP XML). So, having understood above, you COULD now be tempted to
add this in AclServiceTestModule:

.. code:: java

   bind(IdManagerService.class).to(IdManager.class);

but there is two problems with this, 1. small practical (easy to fix),
2. conceptual (more important):

1. IdManager at the time of initially writing this documentation did not
have ``@Singleton`` ``@Inject`` and ``@PreDestroy`` on its ``close()`` .. this may have
already changed - or you could, easily, make a contribution to Genius to
change that; I would recommend making IdManager extend AbstractLifecycle in
this case. This can theoretically, even though we wouldn't recommend
that, also be worked-around by doing the IdManager "wiring" manually
through 2 lines of like new ``IdManager(...)`` and then use
``bind(IdManagerService.class)`` ``.toInstance(myIdManager)``. BUT...

2. ... it would, typically IMHO, be wrong to use IdManager as
IdManagerService implementation in AclServiceTest. This is more of a
general recommendation than a hard rule. The idea is that the component
test of ``aclservice`` should NOT have to depend on the real implementation
of all external services the ``aclservice`` code depends on (only all of the
internal beans of ``aclservice``). So it would, generally, be considered
better to bind a local test implementation of IdManager, which does the
minimum you need for the test. A full coverage test of IdManager would
be the responsibility of genius ``idmanager-impl``, not ``aclservice-impl``. So
what I would probably start with doing in your case, unless there is a
very strong need that you must absolutely have the "full" IdManager for
the AclServiceTest, is to just put this into AclServiceTestModule's
configure() method:

.. code:: java

   // import static org.opendaylight.yangtools.testutils.mockito.MoreAnswers.*;
   bind(IdManagerService.class).toInstance(Mockito.mock(IdManagerService.class, exception());

Doing this will resolve the Guice Exception you have run into below. But
whenever some ``aclservice`` code now actually calls a method
IdManagerService, you'll get an UnstubbedMethodException - and this is
normal - because you just mocked IdManagerService! I would still
recommend to start like this, and then go about fixing
UnstubbedMethodException as they arise when you run AclServiceTest ...

Let us for example say that your new code calls IdManagerServices
``allocateIdRange()`` method somewhere - I don't know if it does, so this is
just for Illustration. You could make your mocked IdManagerService do
something else than throw a UnstubbedMethodException for
``allocateIdRange()`` in two different "styles", this is somewhat dependant
on personal preference:

A) Write out a partial "fake" implementation of it:

Write an inner class right there inside at the end of the
AclServiceTestModule.java - just because it's easier to have this
together and immediately evident when reading code; unless it becomes
very long, in which case you could also move it outside, of course:

.. code:: java

   private abstract static class TestIdManagerService implements IdManagerService {
       @Override
       public Future<RpcResult<AllocateIdOutput>> allocateId(AllocateIdInput input) {
       // TODO do something minimalistic here, just useful for the test, not a general implementation
       }
   }

Note that the code in such test service implementations are typically
simplistic and trivial, and not "real full fledged". Note also that only
methods which the test actually requires are implemented; because it's
abstract, we don't have to write anything at all for other methods of
the interface.

You can then change the binding in configure() to be:

.. code:: text

   bind(IdManagerService.class).toInstance(Mockito.mock(TestIdManagerService.class, realOrException())

Note the subtle difference with the use of ``realOrException()`` instead of
just ``exception()``.

This first style is Vorburger's personal preference; finding this code
clearer to read and understand for anyone than "traditional" Mockito
usage, and not minding to have to type a few extra lines (for the
class), which the IDE will put for me on ``Ctrl-Space`` anyway, than having
to understand the Mockito magic. This is particular true when the
implemented methods have anything but non-trivial arguments and return
types - which is often the case in ODL.

B) Write the implementation using traditional Mockito API:

Write a method, just for clarify, such as:

.. code:: java

   private IdManagerService idManagerService() {
       IdManagerService idManagerService = Mockito.mock(IdManagerService.class);
       Mockito.when(idManagerService.allocateId(...)).thenReturn(...);
       // etc.
       return idManagerService;
   }

and then changing the binding in configure() to be:

.. code:: java

   bind(IdManagerService.class).toInstance(idManagerService());
