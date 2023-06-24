# 4ti2Interface, single 2
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("4ti2interface02.tst");

# /doc/_Chunks.xml:39-47
gap> gens := [ 23, 25, 37, 49 ];
[ 23, 25, 37, 49 ]
gap> equation := [ Concatenation( gens, -gens ) ];
[ [ 23, 25, 37, 49, -23, -25, -37, -49 ] ]
gap> basis := 4ti2Interface_hilbert_equalities_in_positive_orthant( equation );;
gap> Length( basis );
436

#
gap> STOP_TEST("4ti2interface02.tst", 1);
