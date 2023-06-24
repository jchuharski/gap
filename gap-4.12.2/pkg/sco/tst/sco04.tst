# SCO, single 4
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("sco04.tst");

# doc/examples.xml:88-98
gap> c := CreateCoboundaryMatrices( ss, 4, R );;
gap> C := Cohomology( c, R );
----------------------------------------------->>>>  Z^(1 x 1)
----------------------------------------------->>>>  Z^(1 x 1)
----------------------------------------------->>>>  Z/< 2 >
----------------------------------------------->>>>  0
----------------------------------------------->>>>  0
<A graded cohomology object consisting of 5 left modules at degrees
[ 0 .. 4 ]>

#
gap> STOP_TEST("sco04.tst", 1);