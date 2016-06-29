#!/bin/bash

ROBOT_DIR=`pwd`/_static/integration/robot

mkdir -p $ROBOT_DIR
cd submodules/integration/test/csit/libraries
for f in *.robot; do python -m robot.libdoc $f $ROBOT_DIR/$f.html; done
for f in *.py; do python -m robot.libdoc $f $ROBOT_DIR/$f.html; done

