# homalg, single 7
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("homalg07.tst");

# doc/../gap/HomalgComplex.gi:1714-1737
gap> ZZ := HomalgRingOfIntegers( );
Z
gap> M := HomalgMatrix( "[ 2, 3, 4,   5, 6, 7 ]", 2, 3, ZZ );
<A 2 x 3 matrix over an internal ring>
gap> M := RightPresentation( Involution( M ) );
<A non-torsion right module on 3 generators satisfying 2 relations>
gap> N := HomalgMatrix( "[ 2, 3, 4, 5,   6, 7, 8, 9 ]", 2, 4, ZZ );
<A 2 x 4 matrix over an internal ring>
gap> N := RightPresentation( Involution( N ) );
<A non-torsion right module on 4 generators satisfying 2 relations>
gap> mat := HomalgMatrix( "[ \
> 0, 3, 6, 9, \
> 0, 2, 4, 6, \
> 0, 3, 6, 9  \
> ]", 3, 4, ZZ );
<A 3 x 4 matrix over an internal ring>
gap> phi := HomalgMap( Involution( mat ), M, N );
<A "homomorphism" of right modules>
gap> IsMorphism( phi );
true
gap> phi;
<A homomorphism of right modules>

#
gap> STOP_TEST("homalg07.tst", 1);
