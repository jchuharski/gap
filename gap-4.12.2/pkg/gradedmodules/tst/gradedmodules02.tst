# GradedModules, single 2
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("gradedmodules02.tst");

# doc/../examples/doc/RandomMatrix.g:2-11
gap> R := HomalgFieldOfRationalsInDefaultCAS( ) * "a,b,c";;
gap> S := GradedRing( R );;
gap> rand := RandomMatrix( S^1 + S^2, S^2 + S^3 + S^4 );
<A 2 x 3 matrix over a graded ring>
gap> #Display( rand );
gap> #-3*a-b,                                                  -1,                   
gap> #-a^2+a*b+2*b^2-2*a*c+2*b*c+c^2,                          -a+c,                 
gap> #-2*a^3+5*a^2*b-3*b^3+3*a*b*c+3*b^2*c+2*a*c^2+2*b*c^2+c^3,-3*b^2-2*a*c-2*b*c+c^2

#
gap> STOP_TEST("gradedmodules02.tst", 1);