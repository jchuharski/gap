# Modules, single 9
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("modules09.tst");

# doc/../gap/BasicFunctors.gi:1636-1698
gap> ZZ := HomalgRingOfIntegers( );
Z
gap> M := HomalgMatrix( "[ \
> 2, 3, 4, \
> 5, 6, 7  \
> ]", 2, 3, ZZ );
<A 2 x 3 matrix over an internal ring>
gap> M := LeftPresentation( M );
<A non-torsion left module presented by 2 relations for 3 generators>
gap> Z4 := ZZ / 4;
Z/( 4 )
gap> Display( Z4 );
<A residue class ring>
gap> M4 := Z4 * M;
<A non-torsion left module presented by 2 relations for 3 generators>
gap> Display( M4 );
[ [  2,  3,  4 ],
  [  5,  6,  7 ] ]

modulo [ 4 ]

Cokernel of the map

Z/( 4 )^(1x2) --> Z/( 4 )^(1x3),

currently represented by the above matrix
gap> d := Resolution( 2, M4 );
<A right acyclic complex containing 2 morphisms of left modules at degrees 
[ 0 .. 2 ]>
gap> dd := Hom( d, Z4 );
<A cocomplex containing 2 morphisms of right modules at degrees [ 0 .. 2 ]>
gap> DD := Resolution( 2, dd );
<A cocomplex containing 2 morphisms of right complexes at degrees [ 0 .. 2 ]>
gap> D := Hom( DD, Z4 );
<A complex containing 2 morphisms of left cocomplexes at degrees [ 0 .. 2 ]>
gap> C := ZZ * D;
<A "complex" containing 2 morphisms of left cocomplexes at degrees [ 0 .. 2 ]>
gap> LowestDegreeObject( C );
<A "cocomplex" containing 2 morphisms of left modules at degrees [ 0 .. 2 ]>
gap> Display( last );
-------------------------
at cohomology degree: 2
0
------------^------------
(an empty 1 x 0 matrix)

the map is currently represented by the above 1 x 0 matrix
-------------------------
at cohomology degree: 1
Z/< 4 > 
------------^------------
[ [  0 ],
  [  1 ],
  [  2 ],
  [  1 ] ]

the map is currently represented by the above 4 x 1 matrix
-------------------------
at cohomology degree: 0
Z/< 4 > + Z/< 4 > + Z/< 4 > + Z/< 4 > 
-------------------------

#
gap> STOP_TEST("modules09.tst", 1);
