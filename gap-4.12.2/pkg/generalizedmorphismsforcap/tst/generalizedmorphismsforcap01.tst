# GeneralizedMorphismsForCAP, single 1
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("generalizedmorphismsforcap01.tst");

# doc/_Chapter_Examples_and_Tests.xml:10-31
gap> Q := HomalgFieldOfRationals();;
gap> A := VectorSpaceObject( 4, Q );;
gap> B := VectorSpaceObject( 3, Q );;
gap> C := VectorSpaceObject( 2, Q );;
gap> alpha := VectorSpaceMorphism( A, 
> HomalgMatrix( [ [ 1, 1, 1 ], [ 0, 1, 1 ], 
> [ 1, 0, 1 ], [ 1, 1, 0 ] ], 4, 3, Q ), B );;
gap> gamma := VectorSpaceMorphism( C, 
> HomalgMatrix( [ [ -1, 1, -1 ], [ 1, 0, -1 ] ], 2, 3, Q ), B );;
gap> p := ProjectionInFactorOfFiberProduct( [ alpha, gamma ], 1 );;
gap> q := ProjectionInFactorOfFiberProduct( [ alpha, gamma ], 2 );;
gap> PreCompose( AsGeneralizedMorphism( alpha ), GeneralizedInverse( gamma ) );
<A morphism in Generalized morphism category of Category of matrices over Q>
gap> gen1 := PreCompose( AsGeneralizedMorphism( alpha ), 
>                        GeneralizedInverse( gamma ) );
<A morphism in Generalized morphism category of Category of matrices over Q>
gap> gen2 := PreCompose( GeneralizedInverse( p ), AsGeneralizedMorphism( q ) );
<A morphism in Generalized morphism category of Category of matrices over Q>
gap> IsCongruentForMorphisms( gen1, gen2 );
true

#
gap> STOP_TEST("generalizedmorphismsforcap01.tst", 1);
