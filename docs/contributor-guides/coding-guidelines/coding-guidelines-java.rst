.. _coding-guidelines-java:

##########################
Coding Guidelines for Java
##########################

*Note: This document is a work in progress.*

In General we follow the Google Java Code Style Guide with a few exceptions.
See: https://google.github.io/styleguide/javaguide.html

-  4 spaces indentation
-  120 characters line length
-  72 or 80 characters for Javadoc
-  import ordering
   (https://wiki-archive.opendaylight.org/view/GettingStarted:_Eclipse_Setup#Import_ordering)
-  YangTools Design Guidelines
   (https://wiki-archive.opendaylight.org/view/YANG_Tools:Design_and_Coding_Guidelines)
-  follow JLS modifier ordering
   (http://checkstyle.sourceforge.net/config_modifier.html)
-  do not use underscores (_) in identifiers, as they trigger warnings with JDK8
-  Uppercase " *static final Logger LOG = ...* " (See 5.2.4 examples)

Checkstyle
==========

All OpenDaylight projects automatically run Checkstyle, as the
``maven-checkstyle-plugin`` is declared in the odlparent.

Checkstyle Warnings are considered as errors by default since Magnesium.
They will prevent your project from building if code violations are found.
Checkstyle enforcement can be disabled by defining the following property in the
related pom.xml:

 .. code-block:: none

   <properties>
    <odlparent.checkstyle.enforce>false</odlparent.checkstyle.enforce>
   </properties>

Utility classes with only static methods
----------------------------------------

In general we recommend that you typically do not overuse utility classes with
only static methods, but instead write helper @Singleton classes without static
methods which you can easily @Inject via Dependency Injection into other classes
requiring them.
This makes it easier to use non-static helpers in other utilities which can then
in turn be @Inject into your helper (which you cannot do with static).
It also makes it easier to mock the helpers for use in unit tests.

If you must write utility classes with only static methods, or have existing
code that is not trivial to change, then please mark the respective class final,
and give it a private constructor.
Please do not throw any exception from the private constructor
(it is not required).

Suggested process (steps) to move a non-compliant project to enforcement
------------------------------------------------------------------------

We recommend moving existing at least large projects (which typically have
hundreds or thousands of Checkstyle violations) to full compliance and
enforcement through a series of Gerrit changes on single artefacts (bundles),
as opposed to a single change fixing everything and change the POM to enable
enforcement all in one go (god forbid for an entire repository and not just a
single artifact), because:

#. single review would be virtually impossible to even remotely sensibly
   code review by committers
#. batching style changes by type is easy to review (and approve lines
   in bulk "by trust"), for example:

   #. *(...project name...) Organize Imports for Checkstyle compliance*
   #. *(...project name...) Checkstyle compliance: line length*
   #. *(...project name...) Checkstyle compliance: various types of
      small changes*
   #. ''(...project name...) Checkstyle compliant Exception handling'
   #. ''(...project name...) Checkstyle final clean up & enforcement'

#. it's particularly important to split and separately submit
   "trivial pure cosmetic" (e.g. code formatting) from "interesting impactful"
   (e.g. changes to exception handling) changes required by Checkstyle
#. in general, doing small steps and intermediate merges are more rewarding for
   contributing developers than long running massive Gerrit changes
#. more small changes makes the contributors Stats Great Again
   (ODL top contributors submit massive amounts of micro changes)

During such a process, it should be considered "normal" and perfectly
acceptable, that new intermediately merged changes introduce some (small)
regressions and "re-dirty" some previously cleaned up files;
it's OK that they'll be re-fixed as part of new changes by the developers
contributing the clean up in new changes (or rebases)
- until enforcement is enabled at the end of a series of clean up changes.

``@SuppressWarnings``
---------------------

If really needed, projects can override individual Checkstyle rules on a
case-by-case basis by using a ``@SuppressWarnings`` annotation:

 .. code-block:: none

   @SuppressWarnings("checkstyle:methodparampad")
   public AbstractDataTreeListener (INetvirtSfcOF13Provider provider, Class<T> clazz) {
   }

The rule ID (e.g. ``checkstyle:methodparampad`` above) is the name of the
respective Checkstyle module; these IDs can be found e.g. in the
``git/odlparent/checkstyle/src/main/resources/odl_checks.xml``
configuration, or directly on the Checkstyle website from the
http://checkstyle.sourceforge.net/checks.html list.
For example, for the
http://checkstyle.sourceforge.net/config_coding.html#EqualsHashCode rule
you would put ``@SuppressWarnings("checkstyle:EqualsHashCode")``.

This ``@SuppressWarnings("checkstyle:...")`` should in practice be very very rarely
needed.
Please put a comment explaining why you need to suppress a Checkstyle warning
into the code for other to understand, for example:

 .. code-block:: none

   @Override
   @SuppressWarnings("checkstyle:EqualsHashCode"
   // In this particular case an equals without hashCode is OK because
   // [explain!] (I'm a certified grown up and know what I'm doing.)
   public boolean equals(Object obj) {

Please contact odlparent-dev@lists.opendaylight.org if you feel a Checkstyle
rule is too strict in general and should be reviewed.

The `Evolving Checkstyle old wiki page <https://wiki-archive.opendaylight.org/view/EvolvingCheckstyle>`__
documents how to test changes to Checkstyle rules.

Notes for particular Checks
---------------------------

{@inheritDoc} JavaDoc
^^^^^^^^^^^^^^^^^^^^^

This JavaDoc is useless visual noise that hinders code readability.
It is not required to put this, and has no impact. JavaDoc does this by default:

.. code:: java

   /**
    * {@inheritDoc}
    */
   @Override // (or on a constructor)

The only case where {@inheritDoc} is useful is when you actually have
additional Java documentation.
Default JavaDoc interprets as replace the parent documentation.
If you truly want the full text of the parent to be copy/pasted by JavaDoc in
addition to your additional one, then use:

.. code:: java

   /**
    * {@inheritDoc}
    * For this specific implementation...
    */
   @Override // (or on a constructor)

See also
https://github.com/sevntu-checkstyle/sevntu.checkstyle/issues/467 &
http://tornorbye.blogspot.ch/2005/02/inheriting-javadoc-comments.html

IllegalThrows
^^^^^^^^^^^^^

Instead of declaring "throws Exception", in almost all cases you should instead
throw a custom existing or new ODL Exception.
Instead of an unchecked exception (unchecked = extends RuntimeException;
if you must for some technical reason, but should be rare, and avoided),
it's recommended to use a custom module specific checked exception
(checked = extends Exception);
which can wrap a caught RuntimeException, if needed.

In order to avoid proliferation of many kinds of checked Exception subtypes for
various particular nitty gritty things which could possibly go wrong, note that
it in ODL is perfectly OK & recommended to have just ONE checked exception for a
small given functional ODL module (subsystem), and throw that from all of its
API methods.
This makes sense because a typical caller wouldn't want do anything different -
what you are "bubbling up" is just that one of the operations which one module
asked another ODL module to do couldn't be performed.
This avoids having multiple throws for each exception in API methods, and having
problems with extendibility due to having to add more exceptions to the "throws"
declaration of API methods.

The exception for "throws Exception" may be a main() method where it's customary
to let anything propagate to the CLI, or ``@Test testSomething() throws Exception``
where it is acceptable (Checkstyle does NOT flag this particular use of
"throws Exception" in @Test methods).

IllegalCatch
^^^^^^^^^^^^

The `IllegalCatch <http://checkstyle.sourceforge.net/config_coding.html#IllegalCatch>`__
violation should almost never be suppressed in regular "functional" code.
Normal code should only catch specific sub classes of the checked Exception,
and never any generic and/or unchecked exceptions.

In the old pre-Java 7 days, some people used "catch (Exception e)" to
"save typing" as a shorthand for having to catch a number of possibly thrown
types of checked exceptions declared with "throws" by a method within the try
block.
Nowadays, `since Java 7, using a multi-catch block <http://docs.oracle.com/javase/7/docs/technotes/guides/language/catch-multiple.html>`__
is the right way to do this.
In addition to being "nicer" to read because it's clearer, much more importantly
than, a multi-catch does not also accidentally catch RuntimeException, as catch
(Exception e) would.
Catching RuntimeException such as NullPointerException & Co. is typically not
what the developer who used "catch (Exception e)" as shorthand intended.

If a catch (Exception e) is used after a try { } block which does not call any
methods declaring that they may throw checked exceptions with their throws
clause (perhaps not anymore, after code was changed), then that catch may really
have been intended to catch any possible RuntimeException instead?
In that case, if there exceptionally really is a particular reason to want to
"do something and recover from anything that could possibly go wrong, incl.
NullPointerException, IndexOutOfBoundsException, IllegalArgumentException,
IllegalStateException & Co.", then it is clearer to just catch
(RuntimeException e) instead of catch (Exception e).
Before doing this, double check that this truly is the intention of that code,
by having a closer look at code called within the try,
and see if that called code couldn't simply be made more robust.
Be particularly careful with methods declaring checked exceptions in their
“throws” clause:
if any matching exception is thrown inside the “try” block, changing
“catch (Exception e)” to “catch (RuntimeException e)” could change the method
behavior since the exception will exit the method instead of being processed by
the “catch” block.

Proliferation of catch (Exception or RuntimeException e)
{ LOG.error("It failed", e); } in regular "functional" code is a symptom of a
missing abstraction in framework code; e.g. an Abstract interface implementation
helper with correct default error handling, so that functional code does
not have to repeat this over and over again.
For example:

#. For DataBroker related transaction management, check out the (at the time of
   writing still in review) new utilities from
   `c/63372 <https://git.opendaylight.org/gerrit/#/c/63372/>`__ & Co.
#. For RPC related catch, see
   `c/63413 <https://git.opendaylight.org/gerrit/#/c/63413/>`__
#. Instead of ``catch(Exception)`` after a ``try { close(anAutoCloseable) }``
   just use ``AutoCloseables.closeOrWarn(anAutoCloseable)`` introduced in
   https://git.opendaylight.org/gerrit/#/c/44145/

Sometimes developers also simply don't see that an existing framework API
intends implementations to simply propagate their errors up to them.
For example, for Exception handling in:

#. OsgiCommandSupport's ``doExecute()``, the right thing to do is... nothing.
   The parent ``doExecute()`` method declaration throws Exception,
   and that is intentional by the Good People of Karaf.
   Therefore, ``catch(Exception)`` in a OsgiCommandSupport's ``doExecute`` is not required
   : in this case it's perfectly OK to just let any error "propagate" upwards
   automatically.
   If ``doExecute()`` calls other private methods of an OsgiCommandSupport
   implementation, then it is perfectly OK to make those methods declare
   ``"throws SomeException"`` too, and not "handle" them yourself.

#. Callable's ``call()`` passed to a ``DataStoreJobCoordinator enqueueJob()``,
   the right thing to do is... nothing.
   Do not catch ``(Exception)`` but let it propagate.
   If it's useful to "augment" the exception message with more custom details
   which are available inside Callable's ``call()``, then the right thing to do is
   to ``catch (Exception e)
   { throw new YourProjectApiException("Failed to ... for {}", aDetail, e); }``
   and, exceptionally, use ``@SuppressWarnings("checkstyle:IllegalCatch")``.

#. ``org.opendaylight.infrautils.inject.AbstractLifecycle``'s start() and stop()
   methods, again the right thing to do is... nothing.
   Do not catch any Exception but let it propagate.

Here are some cases where ``catch(Exception)`` is almost always wrong, and a
respective ``@SuppressWarnings`` almost never acceptable:

#. In Tests code you typically just ``@Test testSomething() throws
   (Some)Exception`` instead of catch,
   or uses ``@Test(expected = ReadFailedException.class)``.
   One rare case we have seen where it's justified is a
   ``@Test(expected = ReadFailedException.class)``
   with ``catch (Exception e) throw e.getCause()``.

#. In one time "setup" (initialization) kind of code.
   For example, catch for a ``DataBroker registerDataChangeListener`` makes little
   sense - it's typically much better to let a failure to register a data change
   listener "bubble up" then continue, even if logged, and have users wonder why
   the listener isn't working much later.

Only in lower-level "Framework" kind of code, catch (Exception e) is sometimes
justified / required,
and thus ``@SuppressWarnings("checkstyle:IllegalCatch")`` acceptable.

Catching ``Throwable`` in particular is considered an absolute No No
(see e.g. discussion in https://git.opendaylight.org/gerrit/#/c/60855/)
in almost all cases.
You may got confused any meant to catch Exception (see above)
or RuntimeException?

Carefully consider whether you mean to catch and set some flag and/or
log, and then rethrow, or intended to "swallow" the exception.

``System.out``
^^^^^^^^^^^^^^

The ``RegexpSingleLineJava`` "Line contains console output" and "Line contains
``printStackTrace``" should NEVER be suppressed.

In ``src/main`` code, ``System.out.println`` has no place, ever (it should probably be
a ``LOG.info``; and ``System.err`` probably a ``LOG.error``).

In Java code producing Karaf console output, we should only use ``System.out``, and
add the corresponding ``@SuppressWarnings``. ``System.out`` handles pipes and remote
sessions correctly.

In ``src/test`` code, there should be no need to write things out - the point of a
test is to assert something.
During development of a test it is sometimes handy to print things to the console
to see what is going on instead of using the debugger, but this should be removed
in final code, for clarity, and non-verbose test execution.
If you must, do you a Logger even in a test - just like in ``src/main`` code.
This also makes it easier to later move code such as helper methods from test to
production code.

Javadoc Paragraph: < p > tag should be preceded with an empty line
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Checkstyle (rightfully) flags this kind of JavaDoc up as not ideal for
readability:

.. code:: java

     /**
      * Utilities for...
      * <p>This...

and you can address this either like this:

.. code:: java

     /**
      * Utilities for...
      *
      * <p>This...

or like this:

.. code:: java

     /**
      * Utilities for...
      * <p/>
      * This...

Different ODL developers `agree to disagree <https://git.opendaylight.org/gerrit/#/c/46842/>`__
on which of the above is more readable.

Additional Resources
--------------------

-  ``Checkstyle`` http://checkstyle.sourceforge.net/
-  ``Maven``:
   https://github.com/checkstyle/checkstyle/blob/master/src/main/resources/google_checks.xml
-  ``Eclipse``:
   https://github.com/google/styleguide/blob/gh-pages/eclipse-java-google-style.xml
-  ``IntelliJ``:
   https://github.com/google/styleguide/blob/gh-pages/intellij-java-google-style.xml
-  `How to set Checkstyle up in IntelliJ old wiki page <https://wiki-archive.opendaylight.org/view/How_to_set_Checkstyle_up_in_IntelliJ>`__

Classes methods / fields ordering
=================================

Ordering based on modifiers. This is based on visibility and mutability:

| public static final fields
| static final fields
| private static final fields
| private final fields
| private non-final fields
| private volatile fields
| private constructors
| public constructors
| static factory methods
| public methods
| static methods
| private methods
| The first group should be very strict, with the exception of
  FieldUpdaters, which should be private static final, but defined just
  above the volatile field they access. The reason for that is they are
  tied via a string literal name.

The second group is less clear-cut and depends on how instances are created --
there are times when juggling the order makes it easier to understand what is
going on (e.g. co-locating a private static method with static factory method
which uses it).

The third group is pretty much free-for-all.
The goal is to group things so that people do not have scroll around to
understand the code flow.
Public methods are obviously entry-points,
hence are mostly glanced over by users.

Overall this has worked really well so far because;

-  the first group gives a 10000-foot overview of what is going on in the class,
   its footprint and references to other classes
-  the second group gives instantiation entry-points, useful for examining who
   creates the objects and how
-  the third group is implementation details -- for when you really need to dive
   into the details.

Note this list does not include non-private fields.
The reason is that public fields should be forbidden, as should be any mutable
non-private fields.
The reason for that is they are a nightmare to navigate when attempting to
reason about object life-cycle.

Same reasoning applies to inner class, keep them close to the methods which use
them so that the class is easy to read.
If the inner class needs to be understood before the methods that operate on it,
place it before them, otherwise (especially if it's an implementation detail)
after them.
That's when an inner class is appropriate of course.

error-prone
===========

The infrautils projects has adopted the `error-prone code quality tool <http://errorprone.info>`__
(by Google), with suitable customized configuration.

You can use it by using ``org.opendaylight.infrautils:parent`` instead of
``org.opendaylight.odlparent:bundle-parent``.

Note that ``@SuppressWarnings("InconsistentOverloads")`` needs to be placed on the
class, not method; see
https://github.com/google/error-prone/pull/870 and
https://github.com/google/error-prone/issues/869.

SpotBugs
========

SpotBugs is the successor project to FindBugs (which is dead).

SpotBugs is enforced by default across all artifacts since Magnesium.
For artifacts that do not pass SpotBugs, either fix them or disable enforcement
by defining the following property in the pom.xml:

 .. code-block:: none

  <properties>
   <odlparent.spotbugs.enforce>false</odlparent.spotbugs.enforce>
  </properties>

All notes re. FindBugs listed below do still apply to SpotBugs as well
(it's compatible).

FindBugs
========

Note that starting with odlparent 3.0.0 when we say "FindBugs" we now actually
mean "SpotBugs", see above.

``@FBSuppressWarnings``
-----------------------

If really needed, projects can to override individual FindBugs rules on
a case-by-case basis by using a ``@SuppressFBWarnings`` annotation:

.. code:: java

   @SuppressFBWarnings("RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE")
   public V get(K key) {

Unchecked/unconfirmed cast from ``com.google.common.truth.Subject`` to ``com.google.common.truth.BooleanSubject`` etc.
----------------------------------------------------------------------------------------------------------------------

FindBugs seems to be too dumb to deal with perfectly valid Google Truth test
code (which does not use any explicit cast...) so it's OK to:

.. code:: java

   @SuppressFBWarnings("BC_UNCONFIRMED_CAST")

an entire JUnit \*Test class because of that.

null analysis errors, incl. FindBugs' NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR
-------------------------------------------------------------------------------------

see the general null analysis next chapter.

``nonNullAndOptional``
^^^^^^^^^^^^^^^^^^^^^^

Some of the content from this chapter may be moved to
http://www.lastnpe.org later...

Everything ``@NonNullByDefault``
--------------------------------

Do not use null anywhere, assume all method arguments and return values are
``NonNullByDefault``.

null annotations from ``org.eclipse.jdt.annotation`` instead of ``javax.annotation``
------------------------------------------------------------------------------------

We prefer using the null annotations from the package ``org.eclipse.jdt.annotation``
, instead of the ones from ``javax.annotation``
(or those from ``org.jetbrains:annotations``, or ... ``Android``/``Lombok's``/some of the
other ones out there).

This is because the org.eclipse one are modern generics enabled @Target
TYPE_USE annotations, whereas the other ones are not.

Obviously we do NOT "depend on Eclipse" in any way, or "need Eclipse at
run-time" just because of 4 annotations from an org.eclipse package,
which are available in a very small JAR at build-time; e.g.
``org.eclipse.jdt.annotation.NonNull`` is absolutely no different from
``javax.annotation.Nullable``, in that regard.

BTW: The ``javax.annotation NonNull`` & Co. are not more or less "official"
than others; Prof. FindBugs Bill Pugh pushed those to Maven central, but
his "dormant" JSR 305 was never officially finalized and approved;
he's since moved on, and no longer maintains FindBugs.

The Eclipse annotations are also supported by SpotBugs/FindBugs (`says
this issue <https://github.com/spotbugs/spotbugs/issues/471>`__) as well
as NullAway.

null analysis by FindBugs VS. Eclipse JDT
-----------------------------------------

FindBugs' null analysis is inferior to Eclipse JDT's, because:

-  richer null analysis
-  generics enabled (see above)
-  works with existing external libraries, through external annotations,
   see http://www.lastnpe.org
-  much better in-IDE support, at least for Eclipse users

*WIP: We are aiming at, eventualy, running headless Eclipse JDT-based null
analysis during the build, not just for users of the Eclipse IDE UI;
watch*\ `issue ODLPARENT-116 <https://jira.opendaylight.org/browse/ODLPARENT-116>`__
\ *, and*\ http://www.lastnpe.org\ *.*

BTW: FindBugs is dead anyway, long live SpotBugs! \_TODO Gerrit & more
documentation to clarify this...\_

PS: An alternative interesting null checker tool is the `Checker
Framework <https://checkerframework.org>`__.

Runtime null checks
-------------------

In addition to static null analysis during development, you can check null
safety at run-time.
Please use either `JDK's Object's requireNonNull <http://docs.oracle.com/javase/7/docs/api/java/util/Objects.html#requireNonNull(java.lang.Object,java.lang.String)>`__
\ () or `Guava's
Preconditions <https://github.com/google/guava/wiki/PreconditionsExplained>`__
``checkNotNull()`` utility, instead of if (something == null).
Please also use the variant of ``requireNonNull()`` or ``checkNotNull()`` with the
String message to indicate what argument is checked.
For example:

.. code:: java

   public doSomething(Something something) {
       this.something = Objects.requireNonNull(something, "something");
   }

We recommend use of JDK's Object's ``requireNonNull()`` instead of Guava's
Preconditions ``checkNotNull()`` just because the String message of the former can
prevent the problem you can have with the latter if you confuse the order of the
arguments.

We accept and think its OK that ``checkNotNull()`` throws a NullPointerException and
not an IllegalArgumentException (even though code otherwise should never
manually throw new NullPointerException),
because in this particular case a NullPointerException would have happened
anyway later, so it's just an earlier NullPointerException, with added
information of what is null.

We NEVER catch (NullPointerException e) anywhere, because they are programming
errors which should "bubble up", to be fixed, not suppressed.

``nullable`` errors for fields related to dependency injection
--------------------------------------------------------------

null analysis frameworks, such as Eclipse's or FindBugs or other, will not like
this kind of code in a ``@NonNullByDefault`` package:

.. code:: java

   class Example {
        @Inject
        Service s;
   }

the recommended solution is to always use constructor instead of field
injection instead, like this:

.. code:: java

   class Example {
       final Service s;
       @Inject
       Example(Service s) {
           this.s = s;
       }
   }

When this exceptionally is not possible, like in a JUnit component test,
then it's acceptable to suppress warnings:

.. code:: java

   @SuppressFBWarnings("NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR")
   class SomeTest {
       public @Rule GuiceRule guice = new GuiceRule(TestModule.class);
       private @Inject Service service;
   }

Optional
--------

You do not have to use Optional, because real null analysis can give us the same
benefit.

If cleaning up code for null safety, then do not mix introducing Optional with
other null related clean up changes; it's clearer for reviews if you FIRST fix
missing null checks and add null related annotations, and then THEN (optionally)
switch some return types to Optional.

You can use Optional for return types, but not method arguments.

Never use ``Optional<Collection<...>>`` (obviously incl. ``Optional<List<...>>``
or ``Optional<Set<...>>`` AND ``Optional<Map<...>>`` etc.),
just return a respective empty Collection instead.

Note that instead of if ``(anOptional.isPresent()) { return anOptional.get(); }
else { return null; }``
you can and for readability should just use return ``anOptional.orNull()``.
However ideally any such code should not return null but an Optional of
something itself.

Note that instead of ``if (aNullable == null) ? Optional.absent() :
Optional.of(aNullable)a``
;you can and for readability should just use ``Optional.fromNullable(aNullable)``.

To transform an Optional into something else if it present, use the transform()
method instead of an if () check;.
for example:

.. code:: java

   List vrfEntries = MDSALUtil.read(broker, LogicalDatastoreType.CONFIGURATION, vpnVrfTables).transform(VrfTables::getVrfEntry).or(new ArrayList<>());

**Take care** with ``Optional.transform()`` though: if the transformation can return
null, ``Optional.transform()`` will fail with a NullPointerException
(this is the case of most YANG-generated methods).
You can use Java 8 ``Optional.map()`` instead; when it encounters null, it returns
``Optional.empty()``.
The above example would become

.. code:: java

   List<VrfEntry> vrfEntries = MDSALUtil.read(broker, LogicalDatastoreType.CONFIGURATION, vpnVrfTables).toJavaUtil().map(VrfTables::getVrfEntry).orElse(new ArrayList<>());

Prefer the newer Java 8 ``java.util.Optional`` (JUO) over the older Google Guava
``com.google.common.base.Optional`` (GGO), because it offers a better functional
style API for use with Java 8 lambdas, which leads to much more naturally
readable code.
Until we fully migrate all ODL APIs (which is planned), in glue code calling
existing APIs returning GGO (such as the DataBroker API) but itself then wanting
to return a function of that as JUO, please just use the ``toJavaUtil()`` method
available in Guava Optional.

Further Reading & Watching
^^^^^^^^^^^^^^^^^^^^^^^^^^

-  https://github.com/google/guava/wiki/UsingAndAvoidingNullExplained
-  https://stackoverflow.com/questions/26327957/should-java-8-getters-return-optional-type

Streaming and lambdas
=====================

Lambdas are very useful when encapsulating varying behavior.
For example, you can use them instead of boolean behavior selection parameters:

.. code:: java

   public void someMethodA(SomeObject A) {
       commonMethod(A, false);
   }

   public void someMethodB(SomeObject B) {
       commonMethod(B, true);
   }

   private void commonMethod(SomeObject C, boolean behaviour) {
       // common code

       if (behaviour) {
           doA();
       } else {
           doB();
       }

       // common code
   }

can be replaced with

.. code:: java

   public void someMethodA(SomeObject A) {
       commonMethod(A, this::doA);
   }

   public void someMethodB(SomeObjectB) {
       commonMethod(B, this::doB);
   }

   private void commonMethod(SomeObject C, Function behaviour) {
       // common code

       behaviour.apply();

       // common code
   }

They are also useful for replacing small anonymous inner classes which follow
the functional pattern (implementing an interface with a single non-default
method).
Your IDE will typically suggest such transformations.

Lambdas should be avoided when the resulting code is more complex and/or longer
than the non-functional form.
This can happen particularly with streaming.

Streaming also has its place, especially when combined with Optional (see above)
or when processing collections.
It should however be avoided when many objects are created in the resulting
lambda expressions, especially if DTOs end up being necessary to convey
information from one lambda to the next where a single variable could do the
trick in a more traditional form. (TODO: provide examples.)
