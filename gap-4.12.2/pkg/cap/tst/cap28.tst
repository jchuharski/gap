# CAP, single 28
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("cap28.tst");

# doc/_Chapter_Examples_and_Tests.xml:1412-1442
gap> vecspaces := CreateCapCategory( "VectorSpaces02" );
VectorSpaces02
gap> ReadPackage( "CAP", "examples/VectorSpacesAddKernel02.g" );
true
gap> V := QVectorSpace( 2 );
<A rational vector space of dimension 2>
gap> W := QVectorSpace( 3 );
<A rational vector space of dimension 3>
gap> alpha := VectorSpaceMorphism( V, [ [ 1, 1, 1 ], [ -1, -1, -1 ] ], W );
A rational vector space homomorphism with matrix: 
[ [   1,   1,   1 ],
  [  -1,  -1,  -1 ] ]

gap> k := KernelObject( alpha );
<A rational vector space of dimension 1>
gap> T := QVectorSpace( 2 );
<A rational vector space of dimension 2>
gap> tau := VectorSpaceMorphism( T, [ [ 2, 2 ], [ 2, 2 ] ], V );
A rational vector space homomorphism with matrix: 
[ [  2,  2 ],
  [  2,  2 ] ]

gap> k_lift := KernelLift( alpha, tau );
A rational vector space homomorphism with matrix: 
[ [  2 ],
  [  2 ] ]

gap> HasKernelEmbedding( alpha );
false

#
gap> STOP_TEST("cap28.tst", 1);