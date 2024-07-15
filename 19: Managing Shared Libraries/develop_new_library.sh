#!/bin/bash
# A library cache is a list of library directories and their contents, 
# used for quickly loading programs as cache is faster than disk

# lib cache builder is auto-run by package managers when installing packages
# manually view or build library cache
ldconfig -v

# when developing your own libraries, you need to use ldconfig to rebuild lib cache - 
# before this, you need to modify the library path env var
# the $LD_LIBRARY_PATH env var contains any non-standard/dev dirs in which to search for libs
echo $LD_LIBRARY_PATH
# method to add a new lib to existing lib path:
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/appProject
