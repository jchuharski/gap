# MatricesForHomalg, single 8
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("matricesforhomalg08.tst");

# doc/../gap/HomalgMatrix.gi:2984-2995
gap> ZZ := HomalgRingOfIntegers( );
Z
gap> id := HomalgIdentityMatrix( 3, ZZ );
<An unevaluated 3 x 3 identity matrix over an internal ring>
gap> Display( id );
[ [  1,  0,  0 ],
  [  0,  1,  0 ],
  [  0,  0,  1 ] ]
gap> id;
<A 3 x 3 identity matrix over an internal ring>

#
gap> STOP_TEST("matricesforhomalg08.tst", 1);
