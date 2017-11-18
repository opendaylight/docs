Integrating Animal Sniffer with OpenDaylight projects
=====================================================

This section provides information required to setup OpenDaylight projects with
the Maven's `Animal Sniffer plugin`_ to test API compatibility with OpenJDK used.


Steps to setup up animal sniffer plugin with your project
---------------------------------------------------------

1. Clone odlparent and checkout the required branch. The below example uses
   the branch 'origin/master/2.0.x'

.. code:: shell

    git clone https://git.opendaylight.org/gerrit/odlparent
    cd odlparent
    git checkout origin/master/2.0.x

2. Modify the file `odlparent/pom.xml` to install animal sniffer plugin as modified
   below or refer to the change `odlparent gerrit patch`_.

.. code:: xml

    <plugin>
      <groupId>org.codehaus.mojo</groupId>
      <artifactId>animal-sniffer-maven-plugin</artifactId>
      <version>1.16</version>
      <configuration>
          <signature>
              <groupId>org.codehaus.mojo.signature</groupId>
              <artifactId>java18</artifactId>
              <version>1.0</version>
          </signature>
      </configuration>
      <executions>
          <execution>
              <id>animal-sniffer</id>
              <phase>verify</phase>
              <goals>
                  <goal>check</goal>
              </goals>
          </execution>
          <execution>
              <id>check-java-version</id>
              <phase>package</phase>
              <goals>
                  <goal>build</goal>
              </goals>
              <configuration>
                <signature>
                  <groupId>org.codehaus.mojo.signature</groupId>
                  <artifactId>java18</artifactId>
                  <version>1.0</version>
                </signature>
              </configuration>
          </execution>
      </executions>
    </plugin>

3. Run a `mvn clean install` in odlparent.

.. code:: shell

    mvn clean install

4. Clone the respective project to be tested with the plugin. As shown in the
   example in `yangtools gerrit patch`_, modify the relevant pom.xml files to
   reference the version of odlparent which is checked-out. In the below example
   we are changing the version to `2.0.6-SNAPSHOT`.

.. code::

    <parent>
        <groupId>org.opendaylight.odlparent</groupId>
        <artifactId>odlparent</artifactId>
        <version>2.0.6-SNAPSHOT</version>
        <relativePath/>
    </parent>

5. Run a `mvn clean install` in your project.

.. code:: shell

    mvn clean install

6. Run `mvn animal-sniffer:check` on your project and fix any issues relevant to
   the project.

.. code:: shell

    mvn animal-sniffer:check

.. _odlparent gerrit patch: https://git.opendaylight.org/gerrit/#/c/64688/
.. _yangtools gerrit patch: https://git.opendaylight.org/gerrit/64781
.. _Animal Sniffer plugin: http://www.mojohaus.org/animal-sniffer/animal-sniffer-maven-plugin/examples/checking-signatures.html
