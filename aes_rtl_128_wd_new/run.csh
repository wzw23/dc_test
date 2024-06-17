#!/bin/csh -f
\rm -rf *.log *.svf alib* reports log work
mkdir reports work
dc_shell-xg-t -32bit -f ./top.tcl
