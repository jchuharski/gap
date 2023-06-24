# RingsForHomalg, single 10
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("ringsforhomalg10.tst");

# doc/../examples/RingConstructionsSage.g:17-36
#@if IsBound( TryLaunchCAS_IO_ForHomalg( HOMALG_IO_Sage ).stdout )
gap> Z_4 := HomalgRingOfIntegersInSage( ZZ ) / 4;
Z/( 4 )
gap> Display( Z_4 );
<A residue class ring>
gap> Q := HomalgFieldOfRationalsInSage( ZZ );
Q
gap> Display( Q );
<An external ring residing in the CAS Sage>
gap> F2x := F2 * "x";
GF(2)[x]
gap> Display( F2x );
<An external ring residing in the CAS Sage>
gap> Qx := Q * "x";
Q[x]
gap> Display( Qx );
<An external ring residing in the CAS Sage>
#@fi

#
gap> STOP_TEST("ringsforhomalg10.tst", 1);
