# MatricesForHomalg, single 6
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("matricesforhomalg06.tst");

# doc/../gap/HomalgMatrix.gi:3169-3184
gap> e := HomalgInitialIdentityMatrix( 3, ZZ );
<An initial identity 3 x 3 matrix over an internal ring>
gap> e[ 1, 2 ] := "1";;
gap> e[ 2, 1 ] := "-1";;
gap> MakeImmutable( e );
<A 3 x 3 matrix over an internal ring>
gap> Display( e );
[ [   1,   1,   0 ],
  [  -1,   1,   0 ],
  [   0,   0,   1 ] ]
gap> IsOne( e );
false
gap> e;
<A 3 x 3 matrix over an internal ring>

#
gap> STOP_TEST("matricesforhomalg06.tst", 1);