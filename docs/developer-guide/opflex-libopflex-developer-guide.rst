.. _opflex-libopflex-dev-guide:

OpFlex libopflex Developer Guide
================================

Overview
--------

The OpFlex framework allows you to develop agents that can communicate
using the OpFlex protocol and act as a policy element in an OpFlex-based
distributed control system. The OpFlex architecture provides a
distributed control system based on a declarative policy information
model. The policies are defined at a logically centralized policy
repository and enforced within a set of distributed policy elements. The
policy repository communicates with the subordinate policy elements
using the OpFlex control protocol. This protocol allows for
bidirectional communication of policy, events, statistics, and faults.

Rather than simply providing access to the OpFlex protocol, this
framework allows you to directly manipulate a management information
tree containing a hierarchy of managed objects. This tree is kept in
sync as needed with other policy elements in the system, and you are
automatically notified when important changes to the model occur.
Additionally, we can ensure that only those managed objects that are
important to the local policy element are synchronized locally.

Object Model
~~~~~~~~~~~~

Interactions with the OpFlex framework happen through the management
information tree. This is a tree of managed objects defined by an object
model specific to your application. There are a few important major
category of objects that can appear in the model.

-  First, there is the policy object. A policy object represents some
   data related to a policy that describes a user intent for how the
   system should behave. A policy object is stored in the policy
   repository which is the source of "truth" for this object.

-  Second, there is an endpoint object. A endpoint represents an entity
   in the system to which we want to apply policy, which could be a
   network interface, a storage array, or other relevent policy
   endpoint. Endpoints are discovered and reported by policy elements
   locally, and are synchronized into the endpoint repository. The
   originating policy element is the source of truth for the endpoints
   it discovers. Policy elements can retrieve information about
   endpoints discovered by other policy elements by resolving endpoints
   from the endpoint repository.

-  Third, there is the observable object. An observable object
   represents some state related to the operational status or health of
   the policy element. Observable objects will be reported to the
   observer.

-  Finally, there is the local-only object. This is the simplest object
   because it exists only local to a particular policy element. These
   objects can be used to store state specific to that policy element,
   or as helpers to resolve other objects. Read on to learn more.

You can use the genie tool that is included with the framework to
produce your application model along with a set of generated accessor
classes that can work with this framework library. You should refer to
the documentation that accompanies the genie tool for information on how
to use to to generate your object model. Later in this guide, we’ll go
through examples of how to use the generated managed object accessor
classes.

Programming by Side Effect
~~~~~~~~~~~~~~~~~~~~~~~~~~

When developing software on the OpFlex framework, you’ll need to think
in a slightly different way. Rather than calling an API function that
would perform some specific action, you’ll need to write a managed
object to the managed object database. Writing that object to the store
will trigger the side effect of performing the action that you want.

For example, a policy element will need to have a component responsible
for discovering policy endpoints. When it discovers a policy endpoint,
it would write an endpoint object into the managed object database. That
endpoint object will contain a reference to policy that is relevant to
the endpoint object. This will trigger a whole cascade of events. First,
the framework will notice that an endpoint object has been created and
it will write it to the endpoint repository. Second, the framework to
will attempt to resolve the unresolved reference to the relevent policy
object. There might be a whole chain of policy resolutions that will be
automatically performed to download all the relevent policy until there
are no longer any dangling references.

As long as there is a locally-created object in the system with a
reference to that policy, the framework will continually ensure that the
policy and any transitive policies are kept up to date. The policy
element can subscribe to updates to these policy classes that will be
invoked either the first time the policy is resolved or any time the
policy changes.

A consequence of this design is that the managed object database can be
temporarily in an inconsistent state with unresolved dangling
references. Eventually, however, the inconsistency will be fully
resolved. The policy element must be able to cleanly handle
partially-resolved or inconsistent state and eventually reach the
correct state as it receives these update notifications. Note that, in
the OpFlex architecture, when there is no policy that specifically
allows a particular action, that action must be prevented.

Let’s cover one slightly more complex example. If a policy element needs
to discover information about an endpoint that is not local to that
policy element, it will need to retrieve that information from the
endpoint repository. However, just as there is no API call to retrieve a
policy object from the policy repository, there is no API call to
retrieve an endpoint from the endpoint repository.

To get this information, the policy element needs to create a local-only
object that references the endpoint. Once it creates this local-only
object, if the endpoint is not already resolved, the framework will
notice the dangling reference and automatically resolve the endpoint
from the endpoint respository. When the endpoint resolution completes,
the framework deliver an update notification to the policy element. The
policy element will continue to receive any updates related to that
endpoint until the policy element remove the local-only reference to the
object. Once this occurs, the framework can garbage-collect any
unreferenced objects.

Threading and Ownership
~~~~~~~~~~~~~~~~~~~~~~~

The OpFlex framework uses a somewhat unique threading model. Each
managed object in the system belongs to a particular owner. An owner
would typically be a single thread that is reponsible for all updates to
objects with that owner. Though anything can read the state of a managed
object, only the owner of a managed object is permitted to write to it.
Though this is not strictly required for correctness, the performance of
the system wil be best if you ensure that only one thread at a time is
writing to objects with a particular owner.

Change notifications are delivered in a serialized fashion by a single
thread. Blocking this thread from a notification callback will stall
delivery of all notifications. It is therefore best practice to ensure
that you do not block or perform long-running operations from a
notification callback.

Key APIs and Interfaces
-----------------------

Basic Usage and Initialization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The primary interface point into the framework is
opflex::ofcore::OFFramework. You can choose to instantiate your own copy
of the framework, or you can use the static default instance.

Before you can use the framework, you must initialize it by installing
your model metadata. The model metadata is accessible through the
generated model library. In this case, it assumes your model is called
"mymodel":

.. code:: cpp

    #include <opflex/ofcore/OFFramework.h>
    #include <mymodel/metadata/metadata.hpp>
    // ...
    using opflex::ofcore::OFFramework;
    OFFramework::defaultInstance().setModel(mymodel::getMetadata());

The other critical piece of information required for initialization is
the OpFlex identity information. The identity information is required in
order to successfully connect to OpFlex peers. In OpFlex, each component
has a unique name within its policy domain, and each policy domain is
identified by a globally unique domain name. You can set this identity
information by calling:

.. code:: cpp

    OFFramework::defaultInstance()
        .setOpflexIdentity("[component name]", "[unique domain]");

You can then start the framework simply by calling:

.. code:: cpp

    OFFramework::defaultInstance().start();

Finally, you can add peers after the framework is started by calling the
``opflex::ofcore::OFFramework::addPeer`` method:

.. code:: cpp

    OFFramework::defaultInstance().addPeer("192.168.1.5", 1234);

When connecting to the peer, that peer may provide an additional list of
peers to connect to, which will be automatically added as peers. If the
peer does not include itself in the list, then the framework will
disconnect from that peer and add the peers in the list. In this way, it
is possible to automatically bootstrap the correct set of peers using a
known hostname or IP address or a known, fixed anycast IP address.

To cleanly shut down, you can call:

.. code:: cpp

    OFFramework::defaultInstance().stop();

Working with Data in the Tree
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reading from the Tree
^^^^^^^^^^^^^^^^^^^^^

You can access data in the managed tree using the generated accessor
classes. The details of exactly which classes you’ll use will depend on
the model you’re using, but let’s assume that we have a simple model
called "simple" with the following classes:

-  root - The root node. The URI for the root node is "/"

-  foo - A policy object, and a child of root, with a scalar string
   property called "bar", and a unsigned 64-bit integer property called
   baz. The bar property is the naming property for foo. The URI for a
   foo object would be "/foo/[value of bar]/"

-  fooref - A local-only child of root, with a reference to a foo, and a
   scalar string property called "bar". The bar property is the naming
   property for foo. The URI for a fooref object would be
   "/fooref/[value of bar]/"

In this example, we’ll have a generated class for each of the objects.
There are two main ways to get access to an object in the tree.

First, we can get instantiate an accessor class to any node in the tree
by calling one of its static resolve functions. The resolve functions
can take either an already-built URI that represents the object, or you
can call the version that will locate the object by its naming
properties.

Second, we can access the object also from its parent object using the
appropriate child resolver member functions.

However we read it, the object we get back is an immutable view into the
object it references. The properties set locally on that object will not
change even though the underlying object may have been updated in the
store. Note, however, that its children can change between when you
first retrieve the object and when you resolve any children.

Another thing that is critical to note again is that when you attempt to
resolve an object, you can get back nothing, even if the object actually
does exist on another OpFlex node. You must ensure that some object in
the managed object database references the remote managed object you
want before it will be visible to you.

To get access to the root node using the default framework instance, we
can simply call:

.. code:: cpp

    using boost::shared_ptr;
    using boost::optional;
    optional<shared_ptr<simple::root> > r(simple::root::resolve());

Note that whenever we can a resolve function, we get back our data in
the form of an optional shared pointer to the object instance. If the
node does not exist, then the optional will be set to boost::none. Note
that if you dereference an optional that has not been set, you’ll
trigger an assert, so you must check the return as follows:

.. code:: cpp

    if (!r) {
       // handle missing object
    }

Now let’s get a child node of the root in three different ways:

.. code:: cpp

    // Get foo1 by constructing its URI from the root
    optional<shared_ptr<simple::foo> > foo1(simple::foo::resolve("test"));
    // get foo1 by constructing its URI relative to its parent
    foo1 = r.get()->resolveFoo("test");
    // get foo1 by manually building its URI
    foo1 = simple::foo::resolve(opflex::modb::URIBuilder()
                                   .addElement("foo")
                                   .addElement("test")
                                   .build());

All three of these calls will give us the same object, which is the
"foo" object located at "/foo/test/".

The foo class has a single string property called "bar". We can easily
access it as follows:

.. code:: cpp

    const std::string& barv = foo1.getBar();

Writing to the Tree
^^^^^^^^^^^^^^^^^^^

Writing to the tree is nearly as easy as reading from it. The key
concept to understand is the mutator object. If you want to make changes
to the tree, you must allocate a mutator object. The mutator will
register itself in some thread-local storage in the framework instance
you’re using. The mutator is specific to a single "owner" for the data,
so you can only make changes to data associated with that owner.

Whenever you modify one of the accessor classes, the change is actually
forwarded to the currently-active mutator. You won’t see any of the
changes you make until you call the commit member function on the
mutator. When you do that, all the changes you made are written into the
store.

Once the changes are written into the store, you will need to call the
appropriate resolve function again to see the changes.

Allocating a mutator is simple. To create a mutator for the default
framework instance associated with the owner "owner1", just allocate the
mutator on the stack. Be sure to call commit() before it goes out of
scope or you’ll lose your changes.

.. code:: cpp

    {
        opflex::modb::Mutator mutator("owner1");
        // make changes here
        mutator.commit();
    }

Note that if an exception is thrown while making changes but before
committing, the mutator will go out of scope and the changes will be
discarded.

To create a new node, you must call the appropriate add[Child] member
function on its parent. This function takes parameters for each of the
naming properties for the object:

.. code:: cpp

    shared_ptr<simple::foo> newfoo(root->addFoo("test"));

This will return a shared pointer to a new foo object that has been
registered in the active mutator but not yet committed. The "bar" naming
property will be set automatically, but if you want to set the "baz"
property now, you can do so by calling:

.. code:: cpp

    newfoo->setBaz(42);

Note that creating the root node requires a call to the special static
class method createRootElement:

.. code:: cpp

    shared_ptr<simple::root> newroot(simple::root::createRootElement());

Here’s a complete example that ties this all together:

.. code:: cpp

    {
        opflex::modb::Mutator mutator("owner1");
        shared_ptr<simple::root> newroot(simple::root::createRootElement());
        shared_ptr<simple::root> newfoo(newroot->addFoo("test"));
        newfoo->setBaz(42);

        mutator.commit();
    }

Update Notifications
~~~~~~~~~~~~~~~~~~~~

When using the OpFlex framework, you’re likely to find that most of your
time is spend responding to changes in the managed object database. To
get these notifications, you’re going to need to register some number of
listeners.

You can register an object listener to see all changes related to a
particular class by calling a static function for that class. You’ll
then get notifications whenever any object in that class is added,
updated, or deleted. The listener should queue a task to read the new
state and perform appropriate processing. If this function blocks or
peforms a long-running operation, then the dispatching of update
notifications will be stalled, but there will not be any other
deleterious effects.

If multiple changes happen to the same URI, then at least one
notification will be delivered but some events may be consolidated.

The update you get will tell you the URI and the Class ID of the changed
object. The class ID is a unique ID for each class. When you get the
update, you’ll need to call the appropriate resolve function to retrieve
the new value.

You’ll need to create your own object listener derived from
opflex::modb::ObjectListener:

.. code:: cpp

    class MyListener : public ObjectListener {
    public:
        MyListener() { }
        virtual void objectUpdated(class_id_t class_id, const URI& uri) {
            // Your handler here
        }
    };

To register your listener with the default framework instance, just call
the appropriate class static method:

.. code:: cpp

    MyListener listener;
    simple::foo::registerListener(&listener);
    // main loop
    simple::foo::unregisterListener(&listener);

The listener will now recieve notifications whenever any foo or any
children of any foo object changes.

Note that you must ensure that you unregister your listeners before
deallocating them.

API Reference Documentation
---------------------------

Complete API documentation can be found by in doc/html/index.html in
any build.
