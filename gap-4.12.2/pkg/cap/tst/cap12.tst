# CAP, single 12
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("cap12.tst");

# doc/_Chapter_Examples_and_Tests.xml:327-396
gap> field := HomalgFieldOfRationals( );;
gap> A := VectorSpaceObject( 1, field );;
gap> B := VectorSpaceObject( 2, field );;
gap> C := VectorSpaceObject( 3, field );;
gap> alpha := VectorSpaceMorphism( A, HomalgMatrix( [ [ 1, 0, 0 ] ], 1, 3, field ), C );;
gap> beta := VectorSpaceMorphism( C, HomalgMatrix( [ [ 1, 0 ], [ 1, 1 ], [ 1, 2 ] ], 3, 2, field ), B );;
gap> IsZero( PreCompose( alpha, beta ) );
false
gap> IsCongruentForMorphisms(
>     IdentityMorphism( HomologyObject( alpha, beta ) ),
>     HomologyObjectFunctorial( alpha, beta, IdentityMorphism( C ), alpha, beta )
> );
true
gap> kernel_beta := KernelEmbedding( beta );;
gap> K := Source( kernel_beta );;
gap> IsIsomorphism(
>     HomologyObjectFunctorial( 
>         MorphismFromZeroObject( K ), 
>         MorphismIntoZeroObject( K ),
>         kernel_beta,
>         MorphismFromZeroObject( Source( beta ) ),
>         beta
>     )
> );
true
gap> cokernel_alpha := CokernelProjection( alpha );;
gap> Co := Range( cokernel_alpha );;
gap> IsIsomorphism(
>     HomologyObjectFunctorial( 
>         alpha,
>         MorphismIntoZeroObject( Range( alpha ) ),
>         cokernel_alpha,
>         MorphismFromZeroObject( Co ),
>         MorphismIntoZeroObject( Co )
>     )
> );
true
gap> alpha_op := Opposite( alpha );;
gap> beta_op := Opposite( beta );;
gap> IsCongruentForMorphisms(
>     IdentityMorphism( HomologyObject( beta_op, alpha_op ) ),
>     HomologyObjectFunctorial( beta_op, alpha_op, IdentityMorphism( Opposite( C ) ), beta_op, alpha_op )
> );
true
gap> kernel_beta := KernelEmbedding( beta_op );;
gap> K := Source( kernel_beta );;
gap> IsIsomorphism(
>     HomologyObjectFunctorial( 
>         MorphismFromZeroObject( K ), 
>         MorphismIntoZeroObject( K ),
>         kernel_beta,
>         MorphismFromZeroObject( Source( beta_op ) ),
>         beta_op
>     )
> );
true
gap> cokernel_alpha := CokernelProjection( alpha_op );;
gap> Co := Range( cokernel_alpha );;
gap> IsIsomorphism(
>     HomologyObjectFunctorial( 
>         alpha_op,
>         MorphismIntoZeroObject( Range( alpha_op ) ),
>         cokernel_alpha,
>         MorphismFromZeroObject( Co ),
>         MorphismIntoZeroObject( Co )
>     )
> );
true

#
gap> STOP_TEST("cap12.tst", 1);
