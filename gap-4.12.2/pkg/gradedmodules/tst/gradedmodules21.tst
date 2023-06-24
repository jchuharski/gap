# GradedModules, single 21
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("gradedmodules21.tst");

# doc/../examples/Schenck-3.2.g:5-44
gap> Qxyz := HomalgFieldOfRationalsInDefaultCAS( ) * "x,y,z";;
gap> mmat := HomalgMatrix( "[ x, x^3 + y^3 + z^3 ]", 1, 2, Qxyz );
<A 1 x 2 matrix over an external ring>
gap> S := GradedRing( Qxyz );;
gap> M := RightPresentationWithDegrees( mmat, S );
<A graded cyclic right module on a cyclic generator satisfying 2 relations>
gap> Mr := Resolution( M );
<A right acyclic complex containing
2 morphisms of graded right modules at degrees [ 0 .. 2 ]>
gap> bettiM := BettiTable( Mr );
<A Betti diagram of <A right acyclic complex containing
2 morphisms of graded right modules at degrees [ 0 .. 2 ]>>
gap> Display( bettiM );
 total:  1 2 1
--------------
     0:  1 1 .
     1:  . . .
     2:  . 1 1
--------------
degree:  0 1 2
gap> R := GradedRing( CoefficientsRing( S ) * "x,y,z,w" );;
gap> nmat := HomalgMatrix( "[ z^2 - y*w, y*z - x*w, y^2 - x*z ]", 1, 3, R );
<A 1 x 3 matrix over a graded ring>
gap> N := RightPresentationWithDegrees( nmat );
<A graded cyclic right module on a cyclic generator satisfying 3 relations>
gap> Nr := Resolution( N );
<A right acyclic complex containing
2 morphisms of graded right modules at degrees [ 0 .. 2 ]>
gap> bettiN := BettiTable( Nr );
<A Betti diagram of <A right acyclic complex containing
2 morphisms of graded right modules at degrees [ 0 .. 2 ]>>
gap> Display( bettiN );
 total:  1 3 2
--------------
     0:  1 . .
     1:  . 3 2
--------------
degree:  0 1 2

#
gap> STOP_TEST("gradedmodules21.tst", 1);
