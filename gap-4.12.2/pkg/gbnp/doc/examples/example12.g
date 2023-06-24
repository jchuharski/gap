######################### BEGIN COPYRIGHT MESSAGE #########################
# GBNP - computing Gröbner bases of noncommutative polynomials
# Copyright 2001-2010 by Arjeh M. Cohen, Dié A.H. Gijsbers, Jan Willem
# Knopper, Chris Krook. Address: Discrete Algebra and Geometry (DAM) group
# at the Department of Mathematics and Computer Science of Eindhoven
# University of Technology.
# 
# For acknowledgements see the manual. The manual can be found in several
# formats in the doc subdirectory of the GBNP distribution. The
# acknowledgements formatted as text can be found in the file chap0.txt.
# 
# GBNP is free software; you can redistribute it and/or modify it under
# the terms of the Lesser GNU General Public License as published by the
# Free Software Foundation (FSF); either version 2.1 of the License, or
# (at your option) any later version. For details, see the file 'LGPL' in
# the doc subdirectory of the GBNP distribution or see the FSF's own site:
# https://www.gnu.org/licenses/lgpl.html
########################## END COPYRIGHT MESSAGE ##########################

### file created by jwk - wo 30 mei 2007 11:35:01 CEST

# <#GAPDoc Label="Example12">
# <Section Label="Example12"><Heading>The universal enveloping
# algebra of a Lie algebra</Heading>
# Consider the Lie algebra with generators <M>e</M>, <M>f</M> and
# <M>h</M>, and relations <M>[e,f]=h</M>, <M>[e,h]=-2e</M>, <M>[f,h]=2f</M>.
# This is the well-known Lie algebra of type A<M>_1</M>.
# We construct the corresponding universal enveloping algebra of this
# Lie algebra
# and show how one can prove that <M>f^2</M> belongs to the ideal
# generated by <M>e^2</M> in that associative algebra.
# The example is from Knopper's report <Cite Key="Knopper2004"/>.
# <P/>
# First load the package and set the standard infolevel <Ref
# InfoClass="InfoGBNP" Style="Text"/> to 0 and the time infolevel <Ref
# Func="InfoGBNPTime" Style="Text"/> to 0 (for more information about the info
# level, see Chapter <Ref Chap="Info"/>).

# <L>
LoadPackage("gbnp", false);
SetInfoLevel(InfoGBNP,0);
SetInfoLevel(InfoGBNPTime,0);
# </L>

# Then define the algebra and enter the relations as polynomials in GAP. 

# <L>
A:=FreeAssociativeAlgebraWithOne(Rationals, "e", "f", "h");
e:=A.e;; f:=A.f;; h:=A.h;; o:=One(A);;
uerels:=[f*e-e*f+h,h*e-e*h-2*e,h*f-f*h+2*f];
# </L>

# The relations can be converted to NP format (see <Ref Sect="NP"/>) with the
# function <Ref Func="GP2NPList" Style="Text"/> and can be subsequently
# displayed with <Ref Func="PrintNPList" Style="Text"/>.

# <L>
uerelsNP:=GP2NPList(uerels);;
PrintNPList(uerelsNP);
# </L>

# Now configure printing in such a way that this algebra is used with the
# function <Ref Func="GBNP.ConfigPrint" Style="Text"/>.

# <L>
GBNP.ConfigPrint(A);
# </L>

# The set is actually a Gröbner basis, as can be verified by calculating the
# Gröbner basis with <Ref Func="SGrobner"
# Style="Text"/>.

# <L>
GB:=SGrobner(uerelsNP);;
PrintNPList(GB);
# </L>

# Determine whether the quotient algebra is finite dimensional by means of <Ref
# Func="FinCheckQA" Style="Text"/>, with arguments the leading monomials of
# <C>GB</C> and 3, the number of variables involved. The leading monomials of
# <C>GB</C> are found by invoking <Ref Func="LMonsNP" Style="Text"/>.

# <L>
F:=LMonsNP(GB);
FinCheckQA(F,3);
# </L>



# Adding the relation <M>e^2=0</M> results in a finite quotient algebra.

# <L>
extendedrels:=[f*e-e*f+h,h*e-e*h-2*e,h*f-f*h+2*f,e^2];
extendedrelsNP:=GP2NPList(extendedrels);;
# </L>

# With the function <Ref Func="SGrobnerTrace" Style="Text"/> it is possible to
# calculate a Gröbner basis with trace information.

# <L>
GB:=SGrobnerTrace(extendedrelsNP);;
# </L>

# The Gröbner basis can now be displayed with <Ref Func="PrintNPListTrace"
# Style="Text"/>.

# <L>
PrintNPListTrace(GB);
# </L>

# Note the fourth relation: <M>f^2=0</M>. To view a trace one can use the
# function <Ref Func="PrintTracePol" Style="Text"/>.

# <L>
PrintTracePol(GB[4]);
# </L>

# This proves that <M>f^2=0</M> is a consequence of <M>e^2=0</M> in the
# universal enveloping algebra of the simple Lie algebra of type A<M>_1</M>.
# <P/>

# The function <Ref Func="StrongNormalFormTraceDiff" Style="Text"/> can be used
# to trace the difference between an element and its strong normal form in the
# terms of <C>extendedrels</C>. Apparently, in the first example the strong
# normal form of <C>r</C> is <C>r - s.pol=0</C>.

# <L>
r := [[[2,2,2,2,1,1,1,1]],[1]];;
s := StrongNormalFormTraceDiff(r, GB);;

PrintNP(s.pol);
PrintTracePol(s);
PrintNP(AddNP(r,s.pol,1,-1));
# </L>

# One more example where the strong normal form is not zero.

# <L>
r := [[[3,3,3]],[1]];;
s := StrongNormalFormTraceDiff(r, GB);;

PrintNP(s.pol);
PrintTracePol(s);
PrintNP(AddNP(r,s.pol,1,-1));
# </L>

# </Section>
# <#/GAPDoc>