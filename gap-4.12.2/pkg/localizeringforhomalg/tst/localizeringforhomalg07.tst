# LocalizeRingForHomalg, single 7
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("localizeringforhomalg07.tst");

# doc/../examples/Hom(Hom(-,Z128),Z16)_On_Seq.g:13-55
gap> LoadPackage( "LocalizeRingForHomalg" );;
gap> GlobalR := HomalgRingOfIntegersInExternalGAP(  );
Z
gap> Display( GlobalR );
<An external ring residing in the CAS GAP>
gap> LoadPackage( "RingsForHomalg" );;
gap> R := LocalizeAt( GlobalR , [ 2 ] );
Z_< 2 >
gap> Display( R );
<A local ring>
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
gap> seq := HomalgComplex( alpha2 );
<A "complex" containing a single morphism of left modules at degrees
[ 0 .. 1 ]>
gap> Add( seq, alpha1 );
gap> IsShortExactSequence( seq );
true
gap> K := LeftPresentation( HomalgMatrix( [ 2^7 ], R ) );
<A cyclic left module presented by 1 relation for a cyclic generator>
gap> L := RightPresentation( HomalgMatrix( [ 2^4 ], R ) );
<A cyclic right module on a cyclic generator satisfying 1 relation>
gap> triangle := LHomHom( 4, seq, K, L, "t" );
<An exact triangle containing 3 morphisms of left complexes at degrees
[ 1, 2, 3, 1 ]>
gap> lehs := LongSequence( triangle );
<A sequence containing 14 morphisms of left modules at degrees [ 0 .. 14 ]>
gap> ByASmallerPresentation( lehs );
<A non-zero sequence containing 14 morphisms of left modules at degrees
[ 0 .. 14 ]>
gap> IsExactSequence( lehs );
true

#
gap> STOP_TEST("localizeringforhomalg07.tst", 1);
