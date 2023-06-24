# Modules, single 2
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("modules02.tst");

# doc/../gap/HomalgModule.gi:2236-2258
gap> ZZ := HomalgRingOfIntegers( );;
gap> M := HomalgMatrix( "[ \
> 2, 3, 4, \
> 5, 6, 7  \
> ]", 2, 3, ZZ );
<A 2 x 3 matrix over an internal ring>
gap> M := LeftPresentation( M );
<A non-torsion left module presented by 2 relations for 3 generators>
gap> Display( M );
[ [  2,  3,  4 ],
  [  5,  6,  7 ] ]

Cokernel of the map

Z^(1x2) --> Z^(1x3),

currently represented by the above matrix
gap> ByASmallerPresentation( M );
<A rank 1 left module presented by 1 relation for 2 generators>
gap> Display( last );
Z/< 3 > + Z^(1 x 1)

#
gap> STOP_TEST("modules02.tst", 1);
