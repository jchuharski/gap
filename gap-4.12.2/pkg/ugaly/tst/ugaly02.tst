# UGALY, chapter 2
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST( "ugaly02.tst");

# doc/_Chapter_Preliminaries.xml:28-41
gap> G:=WreathProduct(SymmetricGroup(2),SymmetricGroup(3));
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(G);
false
gap> H:=AutBall(3,2);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(H);
true
gap> K:=LocalAction(3,2,G);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(K);
true

# doc/_Chapter_Preliminaries.xml:58-67
gap> G:=WreathProduct(SymmetricGroup(2),SymmetricGroup(3));
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(G);
false
gap> G:=LocalAction(3,2,G);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(G);
true

# doc/_Chapter_Preliminaries.xml:97-104
gap> A4:=LocalAction(4,1,AlternatingGroup(4));
Alt( [ 1 .. 4 ] )
gap> F:=LocalActionPhi(3,A4);
<permutation group with 18 generators>
gap> LocalActionDegree(F);
4

# doc/_Chapter_Preliminaries.xml:121-128
gap> A4:=LocalAction(4,1,AlternatingGroup(4));
Alt( [ 1 .. 4 ] )
gap> F:=LocalActionPhi(3,A4);
<permutation group with 18 generators>
gap> LocalActionRadius(F);
3

# doc/_Chapter_Preliminaries.xml:145-154
gap> a:=(1,3,5)(2,4,6);; a in AutBall(3,2);
true
gap> LocalAction(2,3,2,a,[]);
(1,3,5)(2,4,6)
gap> LocalAction(1,3,2,a,[]);
(1,2,3)
gap> LocalAction(1,3,2,a,[1]);
(1,2)

# doc/_Chapter_Preliminaries.xml:158-167
gap> mt:=RandomSource(IsMersenneTwister,1);;
gap> b:=Random(mt,AutBall(3,4));
(1,18,11,5,23,14,4,20,10,7,22,16)(2,17,12,6,24,13,3,19,9,8,21,15)
gap> LocalAction(2,3,4,b,[3,1]);
(1,2)(3,6,4,5)
gap> LocalAction(3,3,4,b,[3,1]);
Error, the sum of input argument r=3 and the length of input argument
addr=[ 3, 1 ] must not exceed input argument k=4

# doc/_Chapter_Preliminaries.xml:184-194
gap> F:=LocalActionGamma(4,3,SymmetricGroup(3));
Group([ (1,16,19)(2,15,20)(3,13,18)(4,14,17)(5,10,23)(6,9,24)(7,12,22)
  (8,11,21), (1,9)(2,10)(3,12)(4,11)(5,15)(6,16)(7,13)(8,14)(17,21)(18,22)
  (19,24)(20,23) ])
gap> pr:=Projection(F,2);
<action homomorphism>
gap> mt:=RandomSource(IsMersenneTwister,1);;
gap> a:=Random(mt,F);; Image(pr,a);
(1,2)(3,5)(4,6)

# doc/_Chapter_Preliminaries.xml:211-216
gap> AutBall(3,2);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> ImageOfProjection(AutBall(3,2),1);
Group([ (), (), (), (1,2,3), (1,2) ])

# doc/_Chapter_Preliminaries.xml:240-245
gap> G:=AutBall(3,2);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> Size(G);
48

# doc/_Chapter_Preliminaries.xml:269-275
gap> BallAddresses(3,1);
[ [  ], [ 1 ], [ 2 ], [ 3 ] ]
gap> BallAddresses(3,2);
[ [  ], [ 1 ], [ 2 ], [ 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 1 ], [ 2, 3 ], 
  [ 3, 1 ], [ 3, 2 ] ]

# doc/_Chapter_Preliminaries.xml:292-295
gap> LeafAddresses(3,2);
[ [ 1, 2 ], [ 1, 3 ], [ 2, 1 ], [ 2, 3 ], [ 3, 1 ], [ 3, 2 ] ]

# doc/_Chapter_Preliminaries.xml:312-317
gap> AddressOfLeaf(3,2,1);
[ 1, 2 ]
gap> AddressOfLeaf(3,3,1);
[ 1, 2, 1 ]

# doc/_Chapter_Preliminaries.xml:334-341
gap> LeafOfAddress(3,2,[1,2]);
1
gap> LeafOfAddress(3,2,[3]);
5
gap> LeafOfAddress(3,2,[]);
1

# doc/_Chapter_Preliminaries.xml:358-363
gap> ImageAddress(3,2,(1,2),[1,2]);
[ 1, 3 ]
gap> ImageAddress(3,2,(1,2),[1]);
[ 1 ]

# doc/_Chapter_Preliminaries.xml:380-385
gap> ComposeAddresses([1,3],[2,1]);  
[ 1, 3, 2, 1 ]
gap> ComposeAddresses([1,3,2],[2,1]);
[ 1, 3, 1 ]

#
gap> STOP_TEST("ugaly02.tst", 1 );
