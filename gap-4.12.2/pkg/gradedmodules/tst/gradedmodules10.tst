# GradedModules, single 10
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("gradedmodules10.tst");

# doc/../examples/doc/TateResolution.g:2-6
gap> R := HomalgFieldOfRationalsInDefaultCAS( ) * "x0..x3";;
gap> S := GradedRing( R );;
gap> A := KoszulDualRing( S, "e0..e3" );;

#
gap> STOP_TEST("gradedmodules10.tst", 1);
