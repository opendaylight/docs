Kernel Projects' take on Tip-and-Tail release model
###################################################

Overview
********
This document summarizes the common position of Kernel Projects when it comes to the proposed Tip-and-Tail release
model. Kernel projects are all Managed Release Integrated (MRI) and have been following associated release process
for a number of years. During this time we have come across a number of technical challenges with regards to release
cadence and feature delivery realities, which are informing our stance and preferences going forward.

Undersigned projects
********************
Following projects are subscribing to the entirety of this document
* ``aaa``
* ``controller``
* ``ietf``
* ``infrautils``
* ``mdsal``
* ``netconf``
* ``odlparent``
* ``yangtools``

Project Releases and OpenDaylight Simultaneous Release
******************************************************
During the years since ``odlparent-1.0.0`` was first integrated, Kernel Projects, being on the top of OpenDaylight
dependency chain, have gradually transitioned to being Managed Release Integrated (MRI) projects. With the exception
of ``aaa``, ``controller`` and ``netconf``, this transition was accompanied by an explicit vow to follow
Semantic Versioning of releases, such that incompatible changes are only introduced between major releases.
``controller`` has been executing on this policy without so far declaring it explicitly. ``netconf`` has been doing
the same to a large extent, but has been violating strict SemVer rules when it comes to Java interfaces. ``aaa`` has
chosen to not come out ``0.x.x`` release versions, but has been avoiding backwards-incompatible changes as well.

Most notably we have learned to use the ``Release Integrated`` aspect of our projects to gate/orchestrate changes
to minimize downstream churn in three significant ways:

* using minor version bumps to deliver key third-party upgrades, such as ``odlparent-13.1.x`` replacing
  ``odlparent-13.0.x`` in an active Simultaneous Release without causing disruption. ``odlparent-14.1.x`` has done
  the same, replacing ``odlparent-14.0.x``.

* switching priorities between developer-visible and end-user-visible changes, so that we do not overload downstreams
  in any given Simultaneous Release. This is made easier by ``netconf`` providing most of our end-user-visible surface
  while the rest of the projects provide the developer-visible surface.

* holding off SemVer-breaking changes until a reasonable set is established. This mostly comes out of our focusing
  resources, but overall has had surprising results in terms of lowering overheads: at of this writing ``odlparent-14.1``,
  ``infrautils-7.1`` and ``yangtools-14`` are the only actively-maintained branches supporting 2024.09 Scandium,
  2025.03 Titanium and 2025.09 Vanadium Simultaneous Release streams.

Going forward, and especially in the Tip-and-Tail release model, we expect above mechanics to fall neatly in the new
rhythm. We are prepared to extend the current upgrade model to switch from ``upgrade between major versions`` to mening
``upgrade between LTS versions``. The ``controller`` projects, with its data persistence and inter-node communication
contracts, has been providing upgrade paths across multiple major releases with a reasonable (sans bugs) chance to work
the same way they do between major versions.

The Tail
********
Kernel projects, by there nature of being top-of-the-dependency-chain, have been privy to the considerations
of switching to the Tip-and-Tail release model and have done some amount of preparation in the last couple of releases.
This has been painful in more ways than one, mirroring what the experience of Java 9-11.

For all intents and purposes, 2025.03 Titanium is the release train all Kernel Projects can subscribe to as the first
Tail (LTS) release. There are a number of factors contributing to this:

* there is a seamless upgrade from 2024.09 Scandium release, with ``odlparent``, ``infrautils``, ``yangtools`` and
  ``mdsal`` release branches being completely unchanged

* 2025.03 Titanium's ``controller-11`` branch is the release bridging two major migration changes: we are using
  ``Apache Pekko`` instead of ``Akka`` (on the code side) and we are switching to custom persistence (on deployment
  side). All users attempting an in-place upgrade from previous releases need to migrate to ``controller-11`` before
  trying for ``controller-12``.

* 2025.03 Titanium's ``netconf-9`` branch hosts the Netty-based RESTCONF endpoint as well as the JAX-RS endpoint known
  from previous releases. While the new endpoint has some deficiencies, those are treated as bugs and are subject
  to backports -- so that the Netty endpoint becomes at least as good as the JAX-RS endpoint.

The benefits of 2025.03 Titanium being the tail are that all downstream users on previous releases have a well-rounded
release stream they can upgrade to. It being an LTS gives those users a fighting chance to plan and execute the upgrade
before the release becomes unsupported by the community.


The Tip
*******
Having short-term Tip releases is a significant boon to Kernel projects, as it provides a way to integrate changes into
OpenDaylight downstreams without necessarily exposing them to anybody except early adopters. This is significant,
as our experience with devloper-visible changes driven from Kernel projects has shown they typically need some amount
of time to mature before they are in easily-consumable shape by downstreams. This maturity comes from those changes
being subject to integration in downstream OpenDaylight projects, where we typically find common usage patterns that
drive evolution of migration interfaces. Three examples from recent history are:

* the ``yang.binding.RpcService`` migration path was originally outlined in terms of explicit anonymous classes coupled
  with ``ClassToInstanceMap``. That migration path has overall been refactored to the ``ClassToInstanceMap`` serving
  pretty much nobody but edge cases, with most users being catered to by a much simpler ``Rpc...`` variadic array
  coupled with lambdas. The maturation of the APIs to allow for this took roughly 8 months.

* the ``yang.binding.InstanceIdentifier`` deprecation, where the initial cut provided all the tooling strictly
  required. That tooling required a number of operations to fall back to ``InstanceIdentifier`` as an intermediate
  product, which left some downstream code doing arcane transformations and generally jumping through a weird hoops
  to migrate. Others, like ``ovsdb``, were left out of the migration as the scope of changes and hoop-jumping was just
  not tenable. As usual, though, this exercise in eating our own dog food has lead to subsequent introduction of new
  APIs, which in turn made the migration much easier. That process took more than a year to complete.

* the ``mdsal.binding.api.DataObjectModification`` changes introduced in ``mdsal-15.0.0`` is slated to follow
  a similar path: while all users are able to migrate, the migration path is much more comprehensive
  with ``mdsal-15.0.1``, due to that release addressing a glaring gap which went unnotices for about two years.
  Addressing that gap identified further (compatible) API evolution. We probably would like to complete that evolution
  as part of an overall upgrade package -- as the users would not have to re-visit migrated code with another pass just
  because there is a better way to lay out a particular code site. Forming such a package can be expected to take
  another 6-12 months.

From compatibility perspective, ``controller-12`` cannot be upgraded to from anything other than ``controller-11``,
simply because we have opted, in keeping with our current upgrade guidelines, to only support a single previous major
release.

Taking a view on features, ``netconf-10`` continues its work on Netty-based RESTCONF endpoint and that work is expected
to continue for another 3-6 months. At some point, we expect ``netconf-11`` to install only the Netty endpoint, with
the JAX-RS endpoint remaining as a separate installable.

Overall we feel there would be a major benefit in having 2025.09 Vanadium and 2026.03 Chromium as Tip-only releases
with reduced support window.

The next Tail
*************
Given the outline above, our next major target, when all projects will have to bump their major version, is when we
decide to switch to Java 25, which is now available. As far as we know, all our code should just work, but there are
upstream considerations: support for Java 25 is still trickling into our various dependencies. The single major outlier
is Karaf, which has to deal with ``SecurityManager`` being disabled from Java 24 onwards. The situation is being
actively resolved, but we just cannot require Java 25 before we have ``karaf-4.5.0`` and everything that comes with it.
That upgrade may well push us to finally migrate to Jakarta EE namespace, which has the potential to break a lot of
things we are currently using -- but it will allow us to finally upgrade Jolokia :)

We have historically held of from upgrading our Java requirement until after has been out for 12 months, and it seems
like we will not be able to accelerate that process. Assuming all prerequisites are available in the 2026.03 Chromium
timeframe, we will probably need longer than that to have a solid Java 25-based released.

With that context, it seems reasonable to plan for 2026.09 Manganese or 2027.03 Iron to be our target for the next
Tail (LTS) release. As a purely-convenience, the naming of the latter would make for much easier conversations
in the long term.


