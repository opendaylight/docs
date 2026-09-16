.. _migrating-from-schemanode:

Migrating from SchemaNode to EffectiveStatement
================================================

.. note::

   This is a living document. It currently covers the migration work done in
   the ``lighty-core`` and ``lighty-netconf-simulator`` projects. Other
   projects (e.g. LYV) migrate the same way, but their specific patterns
   (tree-walks over ``JsTree``/``JsonTree``/``Tree`` output, module/import
   lookups) are not documented here yet.

Why migrate
------------

``org.opendaylight.yangtools.yang.model.api.SchemaNode`` and its family
(``RpcDefinition``, ``NotificationDefinition``, ``DataSchemaNode``, and so
on) are the "old model" API that yangtools exposed for inspecting a parsed
YANG schema. They are considered morally deprecated: yangtools has been
moving toward ``DeclaredStatement``/``EffectiveStatement`` for a long time,
because that API was designed with the benefit of hindsight after
implementing everything on top of ``SchemaNode`` first. Parts of the old
API are actively being removed - for example `YANGTOOLS-1771
<https://lf-opendaylight.atlassian.net/browse/YANGTOOLS-1771>`__ removed
``UnknownSchemaNode`` entirely.

The old and new APIs are not going away at the same time across all of
yangtools - some accessors (e.g. ``Module.getRpcs()``,
``Module.getNotifications()``, ``ModuleLike.getAugmentations()``) still
return old-model types, because that part of the public API has not moved
yet. Migration is therefore incremental: replace what you can with
``EffectiveStatement``, and bridge to/from the old model at the remaining
edges.

When EffectiveStatement is preferred
-------------------------------------

Prefer ``DeclaredStatement``/``EffectiveStatement`` over ``SchemaNode``
whenever you are:

- Writing new code that inspects an ``EffectiveModelContext`` (looking up
  rpcs, notifications, actions, data nodes, etc).
- Touching code that already receives an ``EffectiveStatement`` from
  somewhere (e.g. ``SchemaInferenceStack``, ``DataSchemaContext``) - don't
  convert it to a ``SchemaNode`` just to keep old call sites working.
- Doing a tree-walk over the schema (recursing into containers, choices,
  cases, actions, etc). ``SchemaTreeAwareEffectiveStatement.schemaTreeNodes()``
  and the sealed ``SchemaTreeEffectiveStatement`` hierarchy give you a single,
  consistent way to walk the tree, instead of a chain of
  ``instanceof DataSchemaNode`` / ``instanceof ActionNodeContainer`` checks.
- Writing a generic helper method that only needs a node's ``QName`` and its
  position in the schema tree - ``EffectiveStatement.argument()`` is cheaper
  and does not carry the accumulated baggage of the ``SchemaNode`` interface
  hierarchy (``getPath()``, ``isAddedByUses()``, etc., much of which is
  already gone or deprecated).

You still have to reach for ``SchemaNode``-family types when:

- Calling an accessor whose return type has not moved yet
  (``Module.getRpcs()``, ``Module.getNotifications()``,
  ``ModuleLike.getAugmentations()``) - bridge from the result, see below.
- A downstream API you don't own still requires a ``SchemaNode``-typed
  argument (e.g. ``DataSchemaContext.dataSchemaNode()`` in yangtools'
  ``yang-data-util``, used for XML/JSON codec resolution).

Key vocabulary
--------------

.. list-table::
   :widths: 25 75
   :header-rows: 1

   * - Type
     - Purpose
   * - ``EffectiveModelContext``
     - Root of the parsed, cross-referenced schema. Unchanged by this
       migration - it is the starting point either way.
   * - ``EffectiveStatement<A, D>``
     - Base type for every effective statement. ``argument()`` returns the
       statement's argument (a ``QName`` for schema-tree statements),
       replacing ``SchemaNode.getQName()``.
   * - ``SchemaTreeEffectiveStatement<D>``
     - Sealed interface implemented by every effective statement that is a
       schema-tree node (``RpcEffectiveStatement``,
       ``NotificationEffectiveStatement``, ``ActionEffectiveStatement``,
       ``ChoiceEffectiveStatement``, ``CaseEffectiveStatement``, and (via
       ``DataTreeEffectiveStatement``) every ``DataSchemaNode``-equivalent).
       This is the direct EffectiveStatement replacement for
       ``SchemaNode``.
   * - ``EffectiveStatementEquivalent<E>``
     - Implemented by old-model types that still wrap an effective
       statement internally (e.g. ``RpcDefinition``,
       ``NotificationDefinition``). ``asEffectiveStatement()`` gives you
       the ``E`` (e.g. ``RpcEffectiveStatement``) without re-parsing
       anything - it is a simple, cheap bridge.
   * - ``DataCompat<A, D>``
     - The bridge in the *other* direction, added specifically to aid this
       migration (``@since 15.0.0``). Implemented by effective statements
       that can still be viewed as legacy ``DataNodeContainer``/
       ``DataSchemaNode`` objects via ``toDataNodeContainer()`` /
       ``toDataSchemaNode()``. Useful as an escape hatch when a caller you
       don't control (yet) still needs the old type.

Migration patterns
-------------------

1. Replace ``getQName()`` with ``argument()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: java

   // before
   QName qname = schemaNode.getQName();

   // after
   QName qname = effectiveStatement.argument();

2. Bridge a collection of old-model types to their EffectiveStatement view
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Where an accessor still returns a ``Collection`` of old-model objects
(because it hasn't moved yet), don't add a ``SchemaNode`` bound to your own
helper method - accept ``EffectiveStatementEquivalent`` instead and bridge
element by element:

.. code-block:: java

   // before: bound to the deprecated SchemaNode
   private static <T extends SchemaNode> Optional<T> findDefinition(
           QName qname, Collection<T> nodes) {
       return nodes.stream()
           .filter(node -> node.getQName().getLocalName().equals(qname.getLocalName()))
           .collect(...);
   }

   // after: bound to the schema-tree EffectiveStatement, bridged via
   // EffectiveStatementEquivalent - works for any schema-tree definition,
   // not just the ones that happen to still be SchemaNode
   private static <E extends SchemaTreeEffectiveStatement<?>> Optional<E> findDefinition(
           QName qname, Collection<? extends EffectiveStatementEquivalent<E>> nodes) {
       return nodes.stream()
           .map(EffectiveStatementEquivalent::asEffectiveStatement)
           .filter(stmt -> stmt.argument().getLocalName().equals(qname.getLocalName()))
           .collect(...);
   }

3. Get to an rpc's input/output
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: java

   // before
   QName inputQName = rpcDefinition.getInput().getQName();
   QName outputQName = rpcDefinition.getOutput().getQName();

   // after
   QName inputQName = rpcEffectiveStatement.inputStatement().argument();
   QName outputQName = rpcEffectiveStatement.outputStatement().argument();

4. Escape hatch for callers you don't control yet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you need to hand a result to code that still expects the old model
(and migrating that code is out of scope right now), use ``DataCompat``
instead of reimplementing a bridge:

.. code-block:: java

   NotificationDefinition legacyView = notificationEffectiveStatement.toDataNodeContainer();

Worked example: ``lighty-core`` (``ConverterUtils``)
------------------------------------------------------

``io.lighty.codecs.util.ConverterUtils`` looked up rpcs and notifications by
``QName`` and returned old-model types:

.. code-block:: java

   public static Optional<? extends RpcDefinition> loadRpc(
           EffectiveModelContext effectiveModelContext, QName rpcQName) {
       Optional<Module> findModule = findModule(effectiveModelContext, rpcQName);
       if (findModule.isEmpty()) {
           return Optional.empty();
       }
       return findDefinition(rpcQName, findModule.get().getRpcs());
   }

   private static <T extends SchemaNode> Optional<T> findDefinition(QName qname, Collection<T> nodes) {
       List<T> foundNodes = nodes.stream()
           .filter(node -> node.getQName().getLocalName().equals(qname.getLocalName()))
           .collect(Collectors.toList());
       return Optional.ofNullable(foundNodes.size() != 1 ? null : foundNodes.get(0));
   }

After migration, ``loadRpc()``/``loadNotification()`` return
``RpcEffectiveStatement``/``NotificationEffectiveStatement``, and
``findDefinition()`` no longer references ``SchemaNode`` at all - it is
generic over any schema-tree definition, following pattern 2 above:

.. code-block:: java

   public static Optional<RpcEffectiveStatement> loadRpc(
           EffectiveModelContext effectiveModelContext, QName rpcQName) {
       Optional<Module> findModule = findModule(effectiveModelContext, rpcQName);
       if (findModule.isEmpty()) {
           return Optional.empty();
       }
       return findDefinition(rpcQName, findModule.get().getRpcs());
   }

   private static <E extends SchemaTreeEffectiveStatement<?>> Optional<E> findDefinition(
           QName qname, Collection<? extends EffectiveStatementEquivalent<E>> nodes) {
       List<E> foundNodes = nodes.stream()
           .map(EffectiveStatementEquivalent::asEffectiveStatement)
           .filter(stmt -> stmt.argument().getLocalName().equals(qname.getLocalName()))
           .collect(Collectors.toList());
       return Optional.ofNullable(foundNodes.size() != 1 ? null : foundNodes.get(0));
   }

Note that ``Module.getRpcs()``/``Module.getNotifications()`` still return
``Collection<? extends RpcDefinition>``/``Collection<? extends
NotificationDefinition>`` - that part of the public API hasn't moved. The
bridge in pattern 2 is what lets ``findDefinition()`` stay
``SchemaNode``-free anyway. The same residual shows up for
``ModuleLike.getAugmentations()``, which still returns
``AugmentationSchemaNode``.

This is a breaking change for any caller relying on the old return type of
``loadRpc()``/``loadNotification()`` - see the ``lighty-netconf-simulator``
example below for what that follow-up looks like. A schema-changing method
signature has to move together with its callers; it cannot be merged on
its own without leaving the dependent project's build broken.

Worked example: ``lighty-netconf-simulator``
-----------------------------------------------

``lighty-netconf-simulator`` depends on ``lighty-core`` and calls
``ConverterUtils.loadRpc()``/``loadNotification()`` directly, so the change
above required a follow-up fix in three places.

``RpcOutputRequestProcessor``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: java

   // before
   private RpcDefinition rpcDefinition;

   public void init(NetconfDeviceServices netconfDeviceServices) {
       ...
       Optional<? extends RpcDefinition> rpcDefinitionOptional =
           ConverterUtils.loadRpc(schemaContext, getIdentifier());
       this.rpcDefinition = rpcDefinitionOptional.orElseThrow(...);
   }

   protected Absolute getRpcDefInputAbsolutePath() {
       return Absolute.of(rpcDefinition.getQName(), rpcDefinition.getInput().getQName());
   }

.. code-block:: java

   // after
   private RpcEffectiveStatement rpcStatement;

   public void init(NetconfDeviceServices netconfDeviceServices) {
       ...
       Optional<RpcEffectiveStatement> rpcStatementOptional =
           ConverterUtils.loadRpc(schemaContext, getIdentifier());
       this.rpcStatement = rpcStatementOptional.orElseThrow(...);
   }

   protected Absolute getRpcDefInputAbsolutePath() {
       return Absolute.of(rpcStatement.argument(), rpcStatement.inputStatement().argument());
   }

Every subclass that used to call ``getRpcDefinition().getQName()`` /
``getRpcDefinition().getInput().getQName()`` (``ToasterServiceAbstractProcessor``,
``NetworkTopologyServiceAbstractProcessor``, ``TriggerNotificationProcessor``)
was updated the same way, to ``getRpcStatement().argument()`` /
``getRpcStatement().inputStatement().argument()`` - following pattern 3
above.

``NotificationOperation``
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: java

   // before
   Optional<? extends NotificationDefinition> notificationDefinition =
       ConverterUtils.loadNotification(effectiveModelContext, quName);
   ...
   writer = xmlNodeConverter.serializeRpc(
       Absolute.of(notificationDefinition.get().getQName()), containerNode);

.. code-block:: java

   // after
   Optional<NotificationEffectiveStatement> notificationStatement =
       ConverterUtils.loadNotification(effectiveModelContext, quName);
   ...
   writer = xmlNodeConverter.serializeRpc(
       Absolute.of(notificationStatement.get().argument()), containerNode);

The subscription bookkeeping elsewhere in the same class
(``effectiveModelContext.getNotifications()``, used to map incoming
subscriptions to stream names) was left untouched: it calls
``EffectiveModelContext.getNotifications()`` directly rather than going
through ``ConverterUtils``, and that accessor still returns
``NotificationDefinition`` - it wasn't affected by this change, and there
was nothing to migrate there yet.

Rolling this out across repositories
--------------------------------------

Because a signature migration like ``loadRpc()``/``loadNotification()`` is
breaking for callers, treat it the same way you would any other breaking
API change in a multi-repository project:

- Land the producing change (``lighty-core``) and the consuming fix
  (``lighty-netconf-simulator``) together, or at least make sure the
  consuming fix is ready before the producing change reaches a released
  version. A ``lighty-core`` release containing the new return types with
  no matching ``lighty-netconf-simulator`` fix leaves that project's build
  broken.
- Grep the downstream project for the old return type and every method
  that used to be called on it (in this case ``RpcDefinition``,
  ``NotificationDefinition``, and the accessor method names) before
  assuming a "self-contained" change in one repository is actually
  self-contained.

What's not covered yet
------------------------

- Tree-walks over the schema that use ``instanceof`` checks against
  ``DataSchemaNode``/``ActionNodeContainer`` and recurse via
  ``getChildNodes()``/``getActions()`` (for example
  ``ActionServiceDeviceProcessor`` in ``lighty-netconf-simulator``) need
  more than a return-type swap: they should move to
  ``SchemaTreeAwareEffectiveStatement.schemaTreeNodes()`` and
  ``ActionEffectiveStatement``. This document will be extended once that
  migration lands.
- LYV's usage (module/submodule/import lookups feeding every output format
  - ``JsTree``, ``JsonTree``, ``Tree``, etc.) is out of scope for now and
  will be added here once that work starts.

References
-----------

- `YANGTOOLS-1771 <https://lf-opendaylight.atlassian.net/browse/YANGTOOLS-1771>`__ -
  Remove ``model.api.UnknownSchemaNode``.
- :ref:`yangtools-developer-guide`
