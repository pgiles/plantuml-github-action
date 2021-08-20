#!/bin/sh

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
sh -c "java -Djava.awt.headless=true -jar /plantuml.jar $*"
