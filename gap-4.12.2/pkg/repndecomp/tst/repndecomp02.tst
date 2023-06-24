# RepnDecomp, chapter 2
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST( "repndecomp02.tst");

# /doc/_Chunks.xml:66-93
gap> G := SymmetricGroup(4);;
gap> irreps := IrreducibleRepresentations(G);;
gap> # rho and tau are isomorphic - they just have a different block order
> rho := DirectSumOfRepresentations([irreps[1], irreps[3], irreps[3]]);;
gap> tau := DirectSumOfRepresentations([irreps[3], irreps[1], irreps[3]]);;
gap> # tau2 is just tau with a basis change - still isomorphic
> B := RandomInvertibleMat(5);;
gap> tau2 := ComposeHomFunction(tau, x -> B^-1 * x * B);;
gap> # using the default implementation
> M := LinearRepresentationIsomorphism(rho, tau);;
gap> IsLinearRepresentationIsomorphism(M, rho, tau);
true
gap> M := LinearRepresentationIsomorphism(tau, tau2);;
gap> IsLinearRepresentationIsomorphism(M, tau, tau2);
true
gap> # using the kronecker sum implementation
> M := LinearRepresentationIsomorphism(tau, tau2 : use_kronecker);;
gap> IsLinearRepresentationIsomorphism(M, tau, tau2);
true
gap> # using the orbit sum implementation
> M := LinearRepresentationIsomorphism(tau, tau2 : use_orbit_sum);;
gap> IsLinearRepresentationIsomorphism(M, tau, tau2);
true
gap> # two distinct irreps are not isomorphic
> M := LinearRepresentationIsomorphism(irreps[1], irreps[2]);
fail

# /doc/_Chunks.xml:99-104
gap> # Following on from the previous example
> M := LinearRepresentationIsomorphismSlow(rho, tau);;
gap> IsLinearRepresentationIsomorphism(M, rho, tau);
true

# /doc/_Chunks.xml:110-120
gap> # Following on from the previous examples
> # Some isomorphic representations
> AreRepsIsomorphic(rho, tau);
true
gap> AreRepsIsomorphic(rho, tau2);
true
gap> # rho isn't iso to irreps[1] since rho is irreps[1] plus some other stuff
> AreRepsIsomorphic(rho, irreps[1]);
false

# /doc/_Chunks.xml:126-134
gap> # We have already seen this function used heavily in previous examples.
> # If two representations are isomorphic, the following is always true:
> IsLinearRepresentationIsomorphism(LinearRepresentationIsomorphism(rho, tau), rho, tau);
true
gap> # Note: this test is sensitive to ordering:
> IsLinearRepresentationIsomorphism(LinearRepresentationIsomorphism(rho, tau), tau, rho);
false

#
gap> STOP_TEST("repndecomp02.tst", 1 );
