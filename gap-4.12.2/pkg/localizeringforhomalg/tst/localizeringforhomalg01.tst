# LocalizeRingForHomalg, single 1
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("localizeringforhomalg01.tst");

# doc/../examples/QuickstartZ.g:14-47
  
gap> LoadPackage( "LocalizeRingForHomalg" );;
gap> ZZ := HomalgRingOfIntegers(  );
Z
gap> R := LocalizeAt( ZZ , [ 2 ] );
Z_< 2 >
gap> Display( R );
<A local ring>
gap> LoadPackage( "Modules" );
true
gap> M := LeftPresentation( HomalgMatrix( [ 2^5 ], R ) );
<A cyclic left module presented by 1 relation for a cyclic generator>
gap> _M := LeftPresentation( HomalgMatrix( [ 2^3 ], R ) );
<A cyclic left module presented by 1 relation for a cyclic generator>
gap> alpha2 := HomalgMap( HomalgMatrix( [ 1 ], R ), M, _M );
<A "homomorphism" of left modules>
gap> M_ := Kernel( alpha2 );
<A cyclic left module presented by yet unknown relations for a cyclic generato\
r>
gap> alpha1 := KernelEmb( alpha2 );
<A monomorphism of left modules>
gap> Display( M_ );
Z_< 2 >/< -4/1 >
gap> Display( alpha1 );
[ [  24 ] ]
/ 1

the map is currently represented by the above 1 x 1 matrix
gap> ByASmallerPresentation( M_ );
<A cyclic left module presented by 1 relation for a cyclic generator>
gap> Display( M_ );
Z_< 2 >/< 4/1 >

#
gap> STOP_TEST("localizeringforhomalg01.tst", 1);
