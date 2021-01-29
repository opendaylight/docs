#################
Logging subsystem
#################

Logging subsystem provides facilities for capturing, recording and
reporting events which occur within the OpenDaylight system.
These events are the primary means of system diagnostics and troubleshooting,
serving a wide audience including automated monitoring systems, operators,
administrators, support personnel and development engineers.

In order to provide a 'single system' experience, all software components should
follow same basic rules for interfacing with the logging system.
While it is not practical to force these rules on the various third parties,
they should to be followed by all newly-developed components.

Logging in Java
~~~~~~~~~~~~~~~

Java provides a diverse set of logging APIs and implementations.
OpenDaylight has selected `SLF4J API <http://www.slf4j.org/apidocs/index.html>`__,
with the implementation being provided by the Karaf container.

The primary reasons for this decision are:

-  proper split between API and implementation, allowing us to change
   the implementation without impacting code
-  ability to provide legacy APIs (JUL, JCL, etc.) for third-party code

Message levels
~~~~~~~~~~~~~~

SLF4J defines five levels of logging messages, ranging from **TRACE** to
**ERROR**.
The guidelines for their use are very vague and in the grand UNIX tradition mix
severity of the message with its granularity.
The following summary defines the basic rules on when to use a specific level,
who the target audience is
and how any message of the specified level will be interpreted.

Note that all events with level **INFO or higher present an API-like contract**
of the system from the integration point-of-view:
if they change, third-party systems such as monitoring may need to be updated to
work correctly with the new system release.
The message text on these levels should be understandable to people with
networking and systems administration background, so any language assuming
knowledge of programming in general, or Java in particular,
should be avoided if at all possible.

Messages on **DEBUG** and higher present are part of interface contract with
support entities, e.g. if they are changed operator and troubleshooting manuals,
as well as knowledge-base systems may need to be updated to correctly interpret
the information conveyed.
On the **DEBUG** level, messages may assume a slight level of familiarity with
general programming concepts. Terminology specific to any programming
language should be avoided if possible.

ERROR
^^^^^

This level serves as the general error facility.
It should be used whenever the software encounters an unexpected error which
preventsfurther processing.
The reporting component may attempt recovery which may affect system
availability or performance for a period of time, or it may forcefully terminate
if it is unable to recover.
This level is always reported for all software components.

There are three examples when this level should be used:

#. Incorrectable internal state inconsistency, such as when a JVM
   reports an OutOfMemoryError. The toplevel handler would log this
   condition and force a JVM exit, as it is not capable of continuing
   execution.
#. Internal state inconsistency, which is correctable by flushing and
   re-creating the state. In this case the component would log an event,
   which would indicate what assertion has been violated and that the
   state has been flushed to recover.
#. Request-level processing error, e.g. the application encounters an
   error which is preventing a particular request from completing, but
   there is no indication of systematic failure which would prevent
   other requests from being successfully processed.

The primary audience are monitoring systems and system operators,
as the events reported have impact on operational performance of the system.

WARN
^^^^

This level serves for events which indicate irregular circumstances,
from which we have a clearly-defined recovery strategy which has no impact on
system availability or performance as seen by the reporting component.
Events on this level are usually reported.

A typical example for a candidate event is when a software component detects
inconsistency within an external data feed and it performs a corrective action
to compensate for it.
Let's say we process a list of key/value pairs and encounter a duplicate key:
we can either overwrite the old occurance, ignore the new occurance or abort.
If we take any of the first two actions, we should report a **WARN** event.
If we take the third, we should report an **ERROR** event.

The primary audience of these events are automated systems, operators and
administrators, as this level of messages indicate non-optimal system operation
(e.g. data feeds could use normalization) or may forebode a future failure.

INFO
^^^^

This level serves for events which constitute major state changes within
a software component -- such as initialization, shutdown, persistent
resource allocation, etc. -- which are part of normal operations.
Events on this level are typically reported for non-library components.

Each software component should log at least four events on this level:

#. when it starts its initialization
#. when it becomes operational,
#. when it starts orderly shutdown,
#. just before it terminates normally

The primary audience of these events are operators and administrators,
who use them to confirm major interactions (such as restarting
components) have occurred within the system.

DEBUG
^^^^^

This is the coarse diagnostic level, serving for events which indicate
internal state transitions and detail what processing occurs.
Events on this level are usually not reported, but are enabled when a subsystem
code flows need to be examined for troubleshooting purposes.

Placement and amount of events generated at this level are at the discretion of
the development engineers, as both relate directly to the component logic.
The amount of detail in these events has to be limited to a single line of
information useful for pinning down a misbehaving software component in a
seemingly normal system and should be directly cross-referencable to either
previous **DEBUG** events or component configuration.
A **hard requirement** is that there has to be at least one flow control
statement (such as if, for, while) or a call to a different software component
between two **DEBUG** event triggers.

Primary audience of these events are administrators and support personnel
diagnosing operational issues, mainly in real-time as they occur on the system.

TRACE
^^^^^

This is the fine-grained diagnostic level, serving for events which
indicate internal state transitions in full detail.
Events on this level are not reported, but have to be explicitly enabled and may
be collected for support purposes.

Placement, amount and contents of these events is completely at the description
of development engineers.
These events are completely release-specific, may change even between minor
releases.
Examples of events reported at this level would be method entry and exit,
possibly including detailed input arguments, and dumps of internal data as it is
being modified.

Primary audience of these events are senior support personnel and development
engineers diagnosing operational irregularities which relate directly to code
structure, mainly offline after being captured on a live system.

Logger instances
~~~~~~~~~~~~~~~~

Each class containing calls to the logging subsystem **MUST** have its own
logger, which is not shared with any other class.
The variable holding reference to this logger **MUST** me named **'LOG'**.
The easiest way to ensure you have the proper logger declaration is to use
the following pattern:

.. code:: java

   import org.slf4j.Logger;
   import org.slf4j.LoggerFactory;

   class Foo {
       private static final Logger LOG = LoggerFactory.getLogger(Foo.class);
       ...
   }

Use parameterized logging
~~~~~~~~~~~~~~~~~~~~~~~~~

Using dynamically-constructed message strings constributes to major overhead as
the message string has to be constructed before the call to logging method is
performed, thus forcing overhead even if the constructed string is not used
(for example **DEBUG** level is not enabled).

Another issue with dynamically-constructed message strings is that they cannot
be easily extracted by static source code analysis -- a process critical for
creating message catalogue of a particular software release, which in turn is
needed for things like support knowledge bases, internationalization, etc.

While the former concern is addressed by Logger classes exposing methods such as
LOG.isDebugEnabled(), the second concern can only be alleviated by using
explicit String literals when calling the Logger methods.
The correct way to address both concerns is to use parameterized logging as
described at http://www.slf4j.org/faq.html#logging_performance.
The basic pattern to follow is this:

.. code:: java

   class Foo {
       private static final Logger LOG = LoggerFactory.getLogger(Foo.class);

       // GOOD: string literal, no dynamic objects
       public void good_method(Object arg) {
           LOG.debug("Method called with arg {}", arg);
       }

       // BAD: string varies with argument
       public bad_method1(Object arg) {
           LOG.debug("Method called with arg " + arg);
       }

       // BAD: code clutter
       public void bad_method2(Object arg) {
           if (LOG.isDebugEnabled()) {
               LOG.debug("Method called with arg {}", arg);
           }
       }

       // BAD: wrong level of language, this would be okay on TRACE
       public bad_method3(Object arg) {
           LOG.debug("arg is {}", arg);
       }
   }

There is one thing that needs to be noted in this style, which is that logging
an exception is properly supported if you supply it as the last argumennt,
but you have to **MAKE SURE IT IS NOT HINTED TO IN THE MESSAGE STRING**:

.. code:: java

   class Foo {
       private static final Logger LOG = LoggerFactory.getLogger(Foo.class);

       // GOOD: note how there is no "{}" for ex
       public void good_method(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.warn("Failed to do something with {}, continuing", arg, ex);
           }
       }

       // BAD:
       // - exception is interpreted as an object
       // - exception chaining cause is lost
       // - stack trace is lost
       public void bad_method(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.warn("Failed to do something with {} because {}, continuing", arg, ex);
           }
       }
   }


Avoid calls to the methods is{Trace|Debug|Info|Warn|Error}Enabled()
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

While it is true that methods such as isDebugEnabled() & Co. eliminate the
minor overhead associated with the variadic method call, the burden on
the developer is not acceptable simply because there are much better
methods of automatic control of this overhead, without having any impact
on the source code (or even the class files).
One of them is JIT-level optimizations stemming from the ability to inline calls
to LOG.debug().
The other is the set of interfaces from java.lang.instrument package,
which can be used to completely eliminate the call overhead by removing all
calls to LOG.debug() from the class bytecode based on the logger configuration.

The exception to this rule can be if you log something that has some cost to
calculate - and if that log statement runs a lot.
Something (made up) like:

.. code:: java

   for (int i = 0; i < 100000; i++) {
       if (LOG.isDebugEnabled()) {
           LOG.debug("The size is: {}", expensiveMethodToCalculateSize());
       }
   }

Note that you can and always should pass Object and thus never toString() your
objects passed to a Logger.
For example, this is WRONG:

.. code:: java

   List<Interface> interfaces;
   if (LOG.isDebugEnabled()) {
       LOG.info("Interfaces: {}", interfaces.toString());
   }

and instead you can simply do:

.. code:: java

   LOG.info("Interfaces: {}", interfaces); // no need to guard this with isDebugEnabled!

Provide useful event context
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each logging call should provide useful context in which it occurred.
This is not usually the case with a lot of Java-based software, notably even
with some JVM implementations.
Here are some typical anti-patterns which contribute to mitigated ability to
diagnose problems when they happen:

.. code:: java

   class Foo {
       private static final Logger LOG = LoggerFactory.getLogger(Foo.class);

       // VERY BAD:
       // - no context provided
       // - non-constant message string
       // - assumes useful toString()
       public bad_method1(Object arg) {
           LOG.debug(arg.toString());
       }

       // VERY BAD:
       // - no context provided
       public bad_method2(Object arg) {
           LOG.debug("{}", arg);
       }

       // COMPLETELY BAD:
       // - silently ignoring errors!!!
       public bad_method3(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
           }
       }

       // EXTREMELY BAD:
       // - message is not constant
       // - no context is provided
       // - ex.getCause() is lost
       // - call stack is lost
       public void bad_method4(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.warn(ex.getMessage());
           }
       }

       // EXTREMELY BAD:
       // - message is not constant
       // - no context is provided
       // - ex.getCause() is probably lost
       // - call stack is probably lost
       // - assumes useful toString()
       public void bad_method5(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.warn(ex.toString());
           }
       }

       // VERY BAD:
       // - no useful context is provided
       // - ex.getCause() is probably lost
       // - call stack is probably lost
       // - administrators don't know what an Exception is!
       public void bad_method6(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.warn("Exception {}", ex);
           }
       }
   }

The proper fix for these anti-patterns is to always provide key information
in the logging event:

-  what went wrong
-  how badly it went wrong
-  in case we recover, shortly describe how (especially on **WARN**
   level)


.. code:: java

   class Foo {
       private static final Logger LOG = LoggerFactory.getLogger(Foo.class);

       // GOOD:
       // - string literal
       // - we explain what we tried to do
       // - we pass along information we have about the failure
       // - we explain that we recovered from the failure
       public void good_method1(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.warn("Failed to do something with {}, ignoring it", arg, ex);
           }
       }

       // GOOD:
       // - string literal
       // - we explain what we tried to do
       // - we pass along information we have about the failure
       // - we escalate the failure to our caller
       // - we also 'chain' the exception so it is not lost and can be
       // correlated
       public void good_method2(Object arg) {
           try {
               doSomething(arg);
               ...
           } catch (SomeException ex) {
               LOG.error("Failed to do something with {}", arg, ex);
               throw new RuntimeException("Failed to do something", ex);
           }
       }
   }
