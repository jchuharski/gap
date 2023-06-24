# MatricesForHomalg, single 9
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("matricesforhomalg09.tst");

# doc/../gap/HomalgMatrix.gi:2550-2558
gap> ZZ := HomalgRingOfIntegers( );
Z
gap> m := HomalgMatrix( [ [ 1, 2, 3 ], [ 4, 5, 6 ] ], ZZ );
<A 2 x 3 matrix over an internal ring>
gap> Display( m );
[ [  1,  2,  3 ],
  [  4,  5,  6 ] ]

#
gap> STOP_TEST("matricesforhomalg09.tst", 1);
