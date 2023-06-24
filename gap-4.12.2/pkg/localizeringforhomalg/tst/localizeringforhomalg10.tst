# LocalizeRingForHomalg, single 10
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("localizeringforhomalg10.tst");

# doc/../examples/ResidueClass.g:46-91
gap> R1 := Qxy / ec;
Q[x,y]/( -x^3-x^2+2*y^2 )
gap> Display( R1 );
<A residue class ring>
gap> wmat1 := R1 * wmat;
<A 2 x 2 matrix over a residue class ring>
gap> LoadPackage( "LocalizeRingForHomalg" );;
gap> R10 := LocalizeAt( R1 ,
>          [ HomalgRingElement( "x", R1 ),
>            HomalgRingElement( "y", R1 ) ]
>        );
Q[x,y]/( x^3+x^2-2*y^2 )_< |[ x ]|, |[ y ]| >
gap> Display( R10 );
<A local ring>
gap> wmat10 := HomalgLocalMatrix( wmat, R10 );
<A 2 x 2 matrix over a local ring>
gap> W10 := LeftPresentation( wmat10 );
<A left module presented by 2 relations for 2 generators>
gap> Res10 := Resolution( 2 , W10 );
<A right acyclic complex containing 2 morphisms of left modules at degrees
[ 0 .. 2 ]>
gap> Display( Res10 );
-------------------------
at homology degree: 2
0
-------------------------
(an empty 0 x 2 matrix)

the map is currently represented by the above 0 x 2 matrix
------------v------------
at homology degree: 1
Q[x,y]/( x^3+x^2-2*y^2 )_< |[ x ]|, |[ y ]| >^(1 x 2)
-------------------------
x*y^2+y^2,2*y^2,         
y^2,      y^4-2*y^3+2*y^2

modulo [ x^3+x^2-2*y^2 ]
/ |[ 1 ]|

the map is currently represented by the above 2 x 2 matrix
------------v------------
at homology degree: 0
Q[x,y]/( x^3+x^2-2*y^2 )_< |[ x ]|, |[ y ]| >^(1 x 2)
-------------------------

#
gap> STOP_TEST("localizeringforhomalg10.tst", 1);
