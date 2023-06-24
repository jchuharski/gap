# Modules, single 12
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("modules12.tst");

# doc/../examples/doc/HomalgRing_module.g:2-11
gap> ZZ := HomalgRingOfIntegers( );
Z
gap> M := ZZ * 4;
<A free right module of rank 4 on free generators>
gap> R := HomalgRing( M );
Z
gap> IsIdenticalObj( R, ZZ );
true

#
gap> STOP_TEST("modules12.tst", 1);
