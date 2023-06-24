# CAP, single 19
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("cap19.tst");

# doc/_Chapter_Examples_and_Tests.xml:760-898
gap> LoadPackage( "MonoidalCategories" );
true
gap> T := TerminalCategoryWithMultipleObjects( );
TerminalCategoryWithMultipleObjects( )
gap> Display( T );
A CAP category with name TerminalCategoryWithMultipleObjects( ):

63 primitive operations were used to derive 280 operations for this category
which algorithmically
* IsCategoryWithDecidableColifts
* IsCategoryWithDecidableLifts
* IsEquippedWithHomomorphismStructure
* IsLinearCategoryOverCommutativeRing
* IsAbelianCategoryWithEnoughInjectives
* IsAbelianCategoryWithEnoughProjectives
* IsRigidSymmetricClosedMonoidalCategory
* IsRigidSymmetricCoclosedMonoidalCategory
and furthermore mathematically
* IsLocallyOfFiniteInjectiveDimension
* IsLocallyOfFiniteProjectiveDimension
* IsTerminalCategory
gap> i := InitialObject( T );
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> t := TerminalObject( T );
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> z := ZeroObject( T );
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> Display( i );
ZeroObject
gap> Display( t );
ZeroObject
gap> Display( z );
ZeroObject
gap> IsIdenticalObj( i, z );
true
gap> IsIdenticalObj( t, z );
true
gap> id_z := IdentityMorphism( z );
<A zero, identity morphism in TerminalCategoryWithMultipleObjects( )>
gap> fn_z := ZeroObjectFunctorial( T );
<A zero, isomorphism in TerminalCategoryWithMultipleObjects( )>
gap> IsEqualForMorphisms( id_z, fn_z );
false
gap> IsCongruentForMorphisms( id_z, fn_z );
true
gap> a := "a" / T;
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> Display( a );
a
gap> IsWellDefined( a );
true
gap> aa := ObjectConstructor( T, "a" );
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> Display( aa );
a
gap> a = aa;
true
gap> b := "b" / T;
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> Display( b );
b
gap> a = b;
false
gap> t := TensorProduct( a, b );
<A zero object in TerminalCategoryWithMultipleObjects( )>
gap> Display( t );
TensorProductOnObjects
gap> a = t;
false
gap> TensorProduct( a, a ) = t;
true
gap> m := MorphismConstructor( a, "m", b );
<A zero, isomorphism in TerminalCategoryWithMultipleObjects( )>
gap> Display( m );
a
|
| m
v
b
gap> IsWellDefined( m );
true
gap> n := MorphismConstructor( a, "n", b );
<A zero, isomorphism in TerminalCategoryWithMultipleObjects( )>
gap> Display( n );
a
|
| n
v
b
gap> IsEqualForMorphisms( m, n );
false
gap> IsCongruentForMorphisms( m, n );
true
gap> m = n;
true
gap> id := IdentityMorphism( a );
<A zero, identity morphism in TerminalCategoryWithMultipleObjects( )>
gap> Display( id );
a
|
| IdentityMorphism
v
a
gap> m = id;
false
gap> id = MorphismConstructor( a, "xyz", a );
true
gap> z := ZeroMorphism( a, a );
<A zero, isomorphism in TerminalCategoryWithMultipleObjects( )>
gap> Display( z );
a
|
| ZeroMorphism
v
a
gap> id = z;
true
gap> IsLiftable( m, n );
true
gap> lift := Lift( m, n );
<A zero, isomorphism in TerminalCategoryWithMultipleObjects( )>
gap> Display( lift );
a
|
| Lift
v
a
gap> IsColiftable( m, n );
true
gap> colift := Colift( m, n );
<A zero, isomorphism in TerminalCategoryWithMultipleObjects( )>
gap> Display( colift );
b
|
| Colift
v
b

#
gap> STOP_TEST("cap19.tst", 1);