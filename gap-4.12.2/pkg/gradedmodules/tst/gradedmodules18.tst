# GradedModules, single 18
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("gradedmodules18.tst");

# doc/../examples/doc/TateResolution.g:201-222
gap> u2 := GradedHom( U1, S^(-1) );
<A graded torsion-free right module on 4 generators satisfying yet unknown rel\
ations>
gap> t2 := TateResolution( u2, -5, 5 );
<An acyclic cocomplex containing
10 morphisms of graded right modules at degrees [ -5 .. 5 ]>
gap> BettiTable( t2 );
<A Betti diagram of <An acyclic cocomplex containing 
10 morphisms of graded right modules at degrees [ -5 .. 5 ]>>
gap> Display( last );
total:   140   84   45   20    6    1    4   15   36   70  120    ?    ?    ?
-----------|----|----|----|----|----|----|----|----|----|----|----|----|----|
    3:   140   84   45   20    6    .    .    .    .    .    .    0    0    0
    2:     *    .    .    .    .    .    1    .    .    .    .    .    0    0
    1:     *    *    .    .    .    .    .    .    .    .    .    .    .    0
    0:     *    *    *    .    .    .    .    .    .    4   15   36   70  120
-----------|----|----|----|----|----|----|----|----|----S----|----|----|----|
twist:    -8   -7   -6   -5   -4   -3   -2   -1    0    1    2    3    4    5
-----------------------------------------------------------------------------
Euler:  -140  -84  -45  -20   -6    0    1    0    0    4   15   36   70  120

#
gap> STOP_TEST("gradedmodules18.tst", 1);
