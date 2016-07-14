#!/bin/bash

ROBOT_DIR=`pwd`/_static/integration/robot
TMP_ROBOT_DIR=`pwd`/_build/robot

mkdir -p $ROBOT_DIR $TMP_ROBOT_DIR
cd submodules/integration/test/csit/libraries
for f in *.robot; do
    python -m robot.libdoc $f $TMP_ROBOT_DIR/$f.html &
done
wait
for f in *.py; do
    python -m robot.libdoc $f $TMP_ROBOT_DIR/$f.html > /dev/null 2>&1 &
done
wait

cd $TMP_ROBOT_DIR/
echo "<html><body><ul>" > $ROBOT_DIR/index.html
for f in *.html; do
    sed 's/black/orange/; s/white/black/; s/^<body>/<body><img src="..\/..\/odl.png">/' $f > $ROBOT_DIR/$f
    echo "<li><a href=\"$f\">$f</a></li>" >> $ROBOT_DIR/index.html
done
echo "</ul></body></html>" >> $ROBOT_DIR/index.html
