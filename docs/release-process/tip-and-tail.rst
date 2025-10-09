##########################
Tip-and-Tail release model
##########################

********
Overview
********
This document summarizes the `Tip-and-Tail release model <https://openjdk.org/jeps/14>`__ and its applicability
to individual OpenDaylight projects as well as its impact on Simultaneous Release planning and execution.

The key insight in the model is that not all releases are equal:
* the Tip is where most development occurs, offering new features but providing only very limited support
* the Tail is where most of support occurs, offering bug fixes without any new features

This document is meant to provide document the context in which the proposal happens and to provide the basic plan
to execute the transition to this release model and related activities rather than providing an ready solution.

**********
Background
**********
OpenDaylight governance (FIXME: link) explicitly states that each individual project is sovereign when it comes to its
governance, deliverables, timelines and overall interaction with other projects. This sovereignty has been long
suppressed by technical challenges which led to the creation of the autorelease project (FIXME: link), which subsumed
individual projects' rights to issue releases to streamline the process and off-load committers.

Over the course of the past 10 years or so the number of projects contained in autorelease has dwindled as projects
* became mature and have transitioned to being Managed Release Integrated, taking ownership of its release process
* lost their contributors and became either self-released or archived

Overall this has manifested in a major shift in how OpenDaylight projects operate with respect to Simultaneous Release:
* Kernel projects use Semantic Versioning to differentiate between major and minor changes to the point where a single
  release stream of odlparent (14.1.x), infrautils (7.1.x) yangtools (14.0.x) is shared between three or more SimRel
  release trains (2024.09 Scandium, 2025.03 Titanium, 2025.09 Vanadium).

* Managed Release Integrated (MRI) projects outside of kernel, specifically bgpcep, openflowplugin and transportpce
  have adjusted to living outside of autorelease quite well, following upgrades delivered to integration/distribution
  via the expected disable/enable project mechanics provided therein.

* Self-released projects have mostly died out, we only have l2switch, which has openflowplugin as its upstream and is
  technically ready to become a regular SimRel participant.

* Managed Snapshot Integrated (MSI) (FIXME: link) projects have now become devoid of active contributors. Their
  continued presence in SimRel relies on contributions from upstream developers, assisted by either the Supercommitter
  process (ovsdb, lispflowmapping, integration/distribution) or by project committers who only review changes, but do
  not actively participate (daexim, jsonrpc). Were it not for the contributions, these projects would be subject to
  removal from SimRel.

* There are no inter-dependencies between MSI projects. Each of them can become self-released without having any impact
  on other projects.

The summary of the above is that autorelease has transitioned from being an useful tool in orchestrating the SimRel of
multiple inter-dependent projects which host majority of development effort to being a vehicle to keep otherwise-dead
projects being able to be delivered.

The release model of Java as a platform has also shifted: instead of a major release every 2-5 years, we now get
a release every 6 months. Some of those releases get designed as Long Term Support, in keeping with the 'Tail' side
of the release model.

OpenDaylight has been aggressively adoping the LTS versions. While our transition from Java 7 to Java 8 has been
a major effort, our transitions from Java 8 to Java 11, then to Java 17 and finally to Java 21 have been a rather
smooth experience. This has allowed us to improve all aspects of our deliverables, be it performance, maintainability
or expressiveness of the codebase.

We have also received feedback from our various end users which indicates that our current release/support model does
not align with typical upgrade cycles. Each SimRel has a lifecycle of 18 months, with 6 months dedicated to development
and 12 months of support. User tell us that 24 months are pretty much the fastest they can move in their deployments.

As a final point, the experience from Kernel project evolutions has shown that while we may deliver critical changes
in a major release, there typically are follow-up improvements to our various APIs that make migration easier. We learn
of these as we migrate downstream projects, a process that can take as long as 18 months. This is a reality of having
a large codebase, where immediate benefits of a change are obvious, but the tools needed for downstreams are oftentimes
not recognized until a particular downstream attempts to migrate. Having a gestation period where we consume changes
internally before presenting them to end users would go a long way in improving ergonomics experienced by end users.

****************************
Others in the Java ecosystem
****************************
The Java (and JVM) ecosystem provides a number of examples of what balance to strike between long-term stability
and on-going development. Although we are free to go our own way, we should pay attention to what others are doing
to inform our decisions.

As noted previously, OpenJDK, being the reference Java SE implementation, has shifted its release mode from "we ship
when we are ready" to predictable release every 6 months. OpenJDK release come in two kinds:
* intermediate releases, notably Java 9 and Java 10, but also Java 12..16, which are supported until the next release
  comes out

* Long Term Support releases, originally issued every 3 years, but now issues every 2 years: Java 11, Java 17, Java 21,
  and Java 25.

Scala, which is used by the Controller project and underlies our default datastore implementation, has transitioned
to the tip-and-tail model. Scala-2.13 is supported indefintely. Scala-3.3.x
is the `current LTS version <https://www.scala-lang.org/blog/2023/05/30/scala-3.3.0-released.html>`__. Scala-3.9.x will
be the next LTS, requiring Java 17.
The `announcement of that <https://www.scala-lang.org/highlights/2025/06/26/highlights-june-2025.html#scala-39-will-be-the-new-lts>`__
explicly says that Scala-3.3.x will be supported for at least a year after Scala-3.9.0 comes out.

Jersey, which we are using for our JAX-RS NETCONF implementation, is maintaining 2.x versions, which support J2EE
before the Jakarta namespace transitions, as well as 3.x versions which use the new Jakarta namespace.

JUnit has a long history of support, with JUnit4 being on the back burner, JUnit5 being supported for the foreseeable
future as well as JUnit6 being out there.

Guava has changed its release policy from burning through major versions and removing thing to freezing removals and
delivering incremental changes in minor version bumps.

Our other dependencies are making a conscious move to newer Java versions while not abandoning their install base:
* Netty 4.2 requires Java 8, while supporting Netty 4.1 on Java 7
* Karaf is set to require Java 21 for karaf-4.5.x, but remains committed to Java 8 for karaf-4.4.x

*****
Goals
*****
The OpenDaylight project organization has to undergo major changes to account for the shifts in the landscape
highlighted above.

// FIXME: figure out formatting of these

1. Update the Simultaneous Release model
We need to acknowledge that by default a SimRel is supported only after the next release is out, mirroring what ONAP
has historically been doing. Some of these releases may become LTS, for which we as a community commit to provide bug
fix support for at least 2 years after General Availability date. We also need to revise how Kernel projects integrate,
as the 'MRI bump' milestone no longer makes sense: this entails NETCONF, which typically wants more than a month or two
of development.

In the scope of this item we need to figure out how to give MRI projects more development time, so that they are not
forced to integrate early. The LTS implications are expanded on in a separate goal below.

2. Eliminate MSI projects
This might seem unrelated, but is actually critical to execution. As noted above, MSI projects are currently living
on borrowed time and we need to figure out how they transition to providing released artifacts such that
integration/distribution can become the sole SimRel delivery vehicle. At the end of the day, participation
in a particular SimRel should be a one-to-one discussion between the TSC and an individual project.

There are a number of strategies available:
* daexim can be integrated into netconf.git as an applicate
* jsonrpc/lispflowmapping can transition to being self-released
* l2switch can be integrated into openflowplugin as an application
* ovsdb (and ofconfig) can be integrated into openflowplugin as management-layer protocols

3. Figure out LTS SimRel planning
Opting into an LTS SimRel is a major commitment for a project. Some projects may opt out from being part of non-LTS
releases just to reduce their workload. Others may want to join SimRel on a best-effort basis, effectively saying
"yes, we are in this SimRel, but may not be in its next SR". We need a framework govern this.

As an example: we would want to say 2025.03 Ti is an LTS, but perhaps TransportPCE is not willing to take up that
burden. Since 2025.03 Ti is on Java 21, we might want to have the next LTS be on Java 25. There are real incentives
to do that, but Karaf is just not ready for Java 25 and we have little control over that. How do we plan for both
of these at the same time?

Given the timelines, we probably want to align LTSes with Java releases, but also want to foster a healthy discussion
to align individual projects' goals. At the end of the day, it seems like no project should be required to support
more than 3 branches (last LTS, current LTS, current SimRel). LTS SimRels should have at least 6-12 months overlap,
but that is a detail that needs further feedback.

4. Clean up governance and related documentation
We have accrued a number of mechanics (like Supercommitters), semantic separations (MRI/MSI/self-released) and
protocols (like Grievances) which are not being used or are superfluous in the overall revamp of the release model.
These should be revised/removed as appropriate.

Our in-place upgrade story needs to be revisited: we currently say that we are able to upgrade
from the immediately-previous major release. We really want to say the in-place upgrade works from the previous
LTS.
