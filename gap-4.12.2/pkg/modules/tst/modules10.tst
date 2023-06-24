# Modules, single 10
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("modules10.tst");

# doc/../gap/HomalgSubmodule.gi:598-610
gap> Z4 := HomalgRingOfIntegers( ) / 4;
Z/( 4 )
gap> I := HomalgMatrix( "[ 2 ]", 1, 1, Z4 );
<A 1 x 1 matrix over a residue class ring>
gap> I := LeftSubmodule( I );
<A principal torsion-free (left) ideal given by a cyclic generator>
gap> IsFree( I );
false
gap> I;
<A principal reflexive non-projective (left) ideal given by a cyclic generator\
>

#
gap> STOP_TEST("modules10.tst", 1);
