#!/bin/bash

projects="
aaa
netconf
odlparent
"

for project in $projects
do
    javasphinx-apidoc --update --title "$project" -o javadoc/$project submodules/$project
    sed -i "1s/^/.. _${project}-javadoc:\n\n/" javadoc/$project/packages.rst
done
