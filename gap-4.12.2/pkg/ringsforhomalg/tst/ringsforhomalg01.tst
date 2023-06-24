# RingsForHomalg, single 1
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("ringsforhomalg01.tst");

# doc/../examples/RingConstructionsExternalGAP.g:4-13
gap> ZZ := HomalgRingOfIntegersInExternalGAP( );
Z
gap> Display( ZZ );
<An external ring residing in the CAS GAP>
gap> F2 := HomalgRingOfIntegersInExternalGAP( 2, ZZ );
GF(2)
gap> Display( F2 );
<An external ring residing in the CAS GAP>

#
gap> STOP_TEST("ringsforhomalg01.tst", 1);
