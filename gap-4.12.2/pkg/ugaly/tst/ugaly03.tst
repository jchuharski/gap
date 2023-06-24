# UGALY, chapter 3
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST( "ugaly03.tst");

# doc/_Chapter_Compatibility.xml:33-38
gap> AreCompatibleBallElements(3,1,(1,2),(1,2,3),1);
true
gap> AreCompatibleBallElements(3,1,(1,2),(1,2,3),2);
false

# doc/_Chapter_Compatibility.xml:42-57
gap> a:=(1,3,5)(2,4,6);; a in AutBall(3,2);
true
gap> LocalAction(1,3,2,a,[]); LocalAction(1,3,2,a,[1]);
(1,2,3)
(1,2)
gap> b:=(1,4)(2,3);; b in AutBall(3,2);
true
gap> LocalAction(1,3,2,b,[]); LocalAction(1,3,2,b,[1]);
(1,2)
(1,2,3)
gap> AreCompatibleBallElements(3,2,a,b,1);
true
gap> AreCompatibleBallElements(3,2,a,b,3);
false

# doc/_Chapter_Compatibility.xml:74-81
gap> mt:=RandomSource(IsMersenneTwister,1);;
gap> a:=Random(mt,AutBall(5,1)); dir:=Random(mt,[1..5]);
(1,2,5,4,3)
4
gap> CompatibleBallElement(AutBall(5,1),a,dir);
(1,2,5,4,3)

# doc/_Chapter_Compatibility.xml:85-90
gap> a:=(1,3,5)(2,4,6);; a in AutBall(3,2);
true
gap> CompatibleBallElement(AutBall(3,2),a,1);
(1,4,2,3)

# doc/_Chapter_Compatibility.xml:119-134
gap> F:=LocalAction(4,1,TransitiveGroup(4,3));
D(4)
gap> G:=LocalAction(4,1,SymmetricGroup(4));
Sym( [ 1 .. 4 ] )
gap> aut:=(1,3);; aut in F;
true
gap> CompatibilitySet(G,aut,1);
RightCoset(Sym( [ 2 .. 4 ] ),(1,3))
gap> CompatibilitySet(F,aut,1);
RightCoset(Group([ (2,4) ]),(1,3))
gap> CompatibilitySet(F,aut,[1,3]);
RightCoset(Group([ (2,4) ]),(1,3))
gap> CompatibilitySet(F,aut,[1,2]);
RightCoset(Group(()),(1,3))

# doc/_Chapter_Compatibility.xml:152-166
gap> mt:=RandomSource(IsMersenneTwister,1);;
gap> aut:=Random(mt,AutBall(3,2));
(1,4,5,2,3,6)
gap> auts:=[];;
gap> for i in [1..3] do auts[i]:=CompatibleBallElement(AutBall(3,2),aut,i); od;
gap> auts;
[ (1,4,6,2,3,5), (1,3,6,2,4,5), (1,5)(2,6) ]
gap> a:=AssembleAutomorphism(3,2,auts);
(1,7,9,3,5,11)(2,8,10,4,6,12)
gap> a in AutBall(3,3); 
true
gap> LocalAction(2,3,3,a,[]);
(1,4,5,2,3,6)

# doc/_Chapter_Compatibility.xml:189-198
gap> F:=LocalAction(3,1,Group((1,2)));
Group([ (1,2) ])
gap> MaximalCompatibleSubgroup(F);
Group([ (1,2) ])
gap> G:=LocalAction(3,2,Group((1,2)));
Group([ (1,2) ])
gap> MaximalCompatibleSubgroup(G);
Group(())

# doc/_Chapter_Compatibility.xml:214-219
gap> D:=LocalActionDelta(3,SymmetricGroup(3));
Group([ (1,3,6)(2,4,5), (1,3)(2,4), (1,2)(3,4)(5,6) ])
gap> SatisfiesC(D);
true

# doc/_Chapter_Compatibility.xml:235-246
gap> G:=LocalActionGamma(3,SymmetricGroup(3));
Group([ (1,4,5)(2,3,6), (1,3)(2,4)(5,6) ])
gap> list:=CompatibleSubgroups(G);
[ Group(()), Group([ (1,2)(3,5)(4,6) ]), Group([ (1,3)(2,4)(5,6) ]), 
  Group([ (1,6)(2,5)(3,4) ]), Group([ (1,4,5)(2,3,6) ]), 
  Group([ (1,4,5)(2,3,6), (1,3)(2,4)(5,6) ]) ]
gap> Size(list);
6
gap> Size(AllSubgroups(SymmetricGroup(3)));
6

# doc/_Chapter_Compatibility.xml:262-270
gap> ConjugacyClassRepsCompatibleSubgroups(AutBall(3,2));
[ Group(()), Group([ (1,2)(3,5)(4,6) ]), Group([ (1,4,5)(2,3,6) ]), 
  Group([ (3,5)(4,6), (1,2) ]), Group([ (1,2)(3,5)(4,6), (1,3,6)(2,4,5) ]), 
  Group([ (3,5)(4,6), (1,3,5)(2,4,6), (1,2)(3,4)(5,6) ]), 
  Group([ (1,2)(3,5)(4,6), (1,3,5)(2,4,6), (1,2)(5,6), (1,2)(3,4) ]), 
  Group([ (3,5)(4,6), (1,3,5)(2,4,6), (1,2)(5,6), (1,2)(3,4) ]), 
  Group([ (5,6), (3,4), (1,2), (1,3,5)(2,4,6), (3,5)(4,6) ]) ]

# doc/_Chapter_Compatibility.xml:287-300
gap> S3:=LocalAction(3,1,SymmetricGroup(3));
Sym( [ 1 .. 3 ] )
gap> ConjugacyClassRepsCompatibleGroupsWithProjection(2,S3);
[ Group([ (1,2)(3,5)(4,6), (1,4,5)(2,3,6) ]), 
  Group([ (1,2)(3,4)(5,6), (1,2)(3,5)(4,6), (1,4,5)(2,3,6) ]), 
  Group([ (3,4)(5,6), (1,2)(3,4), (1,4,5)(2,3,6), (3,5,4,6) ]), 
  Group([ (3,4)(5,6), (1,2)(3,4), (1,4,5)(2,3,6), (3,5)(4,6) ]), 
  Group([ (3,4)(5,6), (1,2)(3,4), (1,4,5)(2,3,6), (5,6), (3,5,4,6) ]) ]
gap> A3:=LocalAction(3,1,AlternatingGroup(3));
Alt( [ 1 .. 3 ] )
gap> ConjugacyClassRepsCompatibleGroupsWithProjection(2,A3);
[ Group([ (1,4,5)(2,3,6) ]) ]

# doc/_Chapter_Compatibility.xml:304-313
gap> F:=SymmetricGroup(3);;
gap> rho:=SignHomomorphism(F);;
gap> H1:=LocalActionPi(2,3,F,rho,[0,1]);;
gap> H2:=LocalActionPi(2,3,F,rho,[1]);;
gap> Size(ConjugacyClassRepsCompatibleGroupsWithProjection(3,H1));
2
gap> Size(ConjugacyClassRepsCompatibleGroupsWithProjection(3,H2));
4

#
gap> STOP_TEST("ugaly03.tst", 1 );
