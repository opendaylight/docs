#!/bin/bash

projects="
odlparent
"

for project in $projects
do
    javasphinx-apidoc --update --title "$project" -o javadoc/$project submodules/$project
done
