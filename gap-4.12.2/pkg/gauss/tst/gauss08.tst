# Gauss, single 8
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("gauss08.tst");

# doc/../gap/Sparse.gi:357-384
gap> M := SparseDiagMat( ListWithIdenticalEntries( 10,
>         SparseMatrix( [[1,1],[1,1]] * One( GF(5) ) ) ) );
<a 20 x 20 sparse matrix over GF(5)>
gap> Display(M);
 1 1 . . . . . . . . . . . . . . . . . .
 1 1 . . . . . . . . . . . . . . . . . .
 . . 1 1 . . . . . . . . . . . . . . . .
 . . 1 1 . . . . . . . . . . . . . . . .
 . . . . 1 1 . . . . . . . . . . . . . .
 . . . . 1 1 . . . . . . . . . . . . . .
 . . . . . . 1 1 . . . . . . . . . . . .
 . . . . . . 1 1 . . . . . . . . . . . .
 . . . . . . . . 1 1 . . . . . . . . . .
 . . . . . . . . 1 1 . . . . . . . . . .
 . . . . . . . . . . 1 1 . . . . . . . .
 . . . . . . . . . . 1 1 . . . . . . . .
 . . . . . . . . . . . . 1 1 . . . . . .
 . . . . . . . . . . . . 1 1 . . . . . .
 . . . . . . . . . . . . . . 1 1 . . . .
 . . . . . . . . . . . . . . 1 1 . . . .
 . . . . . . . . . . . . . . . . 1 1 . .
 . . . . . . . . . . . . . . . . 1 1 . .
 . . . . . . . . . . . . . . . . . . 1 1
 . . . . . . . . . . . . . . . . . . 1 1
gap> Rank(M);
10

#
gap> STOP_TEST("gauss08.tst", 1);
