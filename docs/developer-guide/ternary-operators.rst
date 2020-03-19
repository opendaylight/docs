Ternary Operators
=================

Nested ternary operators can be difficult. Never nest ternary operators,
since this makes code utterly, completely opaque, and hard to refactor.
However, there are some cases where using a ternary operator aides' performance,
since a ternary operator can produce results, which can be passed on.

For example, the following is a typical construct:

.. code-block:: none

   Object doSomething(Object param) {
      return param == null ? DEFAULT : createSomething(param);
   }

This construct is immediately obvious to anyone trying to read a YANG tool or
any Java code. Compare this construct to a more obvious version:

.. code-block:: none

   Object doSomething(Object param) {
      if (param == null) {
          return DEFAULT;
      }
      return createSomething(param);
    }

Both constructs do the same thing, but one has six lines, while the other only has
three. This means less code (that is, sans folding) that fits on a screen. For deeply
reasoning about code, folding does not count.

From a performance perspective, expressions are more expressive at bytecode level.
This would not matter, except Hotspot counts bytes determine in-lining. That is not
going to change (refer to bug ID: `JDK-6316156 <https://bugs.openjdk.java.net/browse/JDK-6316156>`_).
If a method is proven to be formable or can be reasonably expressed in terms of an
expression, you should do that method. This will aid JIT.

Hot Cache Fields
================

It is common to have lazily initiated or `memorized <https://en.wiktionary.org/wiki/memoization>`_ objects.
This typically involves some fields being initially null and then becoming non-null for the its duration.
Access to these fields is mediated through an accessor method, which has a general shape of (sans threads):

.. code-block:: none

   private @Nullable Foo foo;
   public Foo foo() {
    if (foo == null) {
      foo = computeFoo();
    }
    return foo;
   }

If a performance is critical, the general shape (sans threads) will be the following:

.. code-block:: none

   public Foo foo() {
    final Foo existing;
    return (existing = foo) == null ? existing : loadFoo();
   }
   private Foo loadFoo() {
     return effectiveInstance = createFoo();
   }

While the code is less readable, it also heavily relies on bytecode expressiveness.
This leads to a few bytes being knocked off from the resulting bytecode. At runtime,
this helps Hotspots to inline more aggressively, which helps performance.

Thread-safe Cache Fields
========================

If multiple threads are at play, cache fields become more interesting. In general,
you want to perform the equivalent of double-checked locking. Note that you have
JDK9+ at your disposal.

.. code-block:: none

   TBD: volatile vs. double-checked loading with immutables
   TBD: getAcquire() + compareAndExchangeRelease()
   Thanks TBD: getAcqiore() + setRelease()
