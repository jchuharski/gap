# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Declarations
#
# THIS FILE IS AUTOMATICALLY GENERATED, SEE CAP_project/CAP/gap/MethodRecord.gi

#! @Chapter Monoidal Categories

#! @Section Add-methods

#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `Braiding`.
#! $F: ( a, b ) \mapsto \mathtt{Braiding}(a, b)$.
#! @Returns nothing
#! @Arguments C, F
DeclareOperation( "AddBraiding",
                  [ IsCapCategory, IsFunction ] );

DeclareOperation( "AddBraiding",
                  [ IsCapCategory, IsFunction, IsInt ] );

DeclareOperation( "AddBraiding",
                  [ IsCapCategory, IsList, IsInt ] );

DeclareOperation( "AddBraiding",
                  [ IsCapCategory, IsList ] );

#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `BraidingInverse`.
#! $F: ( a, b ) \mapsto \mathtt{BraidingInverse}(a, b)$.
#! @Returns nothing
#! @Arguments C, F
DeclareOperation( "AddBraidingInverse",
                  [ IsCapCategory, IsFunction ] );

DeclareOperation( "AddBraidingInverse",
                  [ IsCapCategory, IsFunction, IsInt ] );

DeclareOperation( "AddBraidingInverse",
                  [ IsCapCategory, IsList, IsInt ] );

DeclareOperation( "AddBraidingInverse",
                  [ IsCapCategory, IsList ] );

#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `BraidingInverseWithGivenTensorProducts`.
#! $F: ( s, a, b, r ) \mapsto \mathtt{BraidingInverseWithGivenTensorProducts}(s, a, b, r)$.
#! @Returns nothing
#! @Arguments C, F
DeclareOperation( "AddBraidingInverseWithGivenTensorProducts",
                  [ IsCapCategory, IsFunction ] );

DeclareOperation( "AddBraidingInverseWithGivenTensorProducts",
                  [ IsCapCategory, IsFunction, IsInt ] );

DeclareOperation( "AddBraidingInverseWithGivenTensorProducts",
                  [ IsCapCategory, IsList, IsInt ] );

DeclareOperation( "AddBraidingInverseWithGivenTensorProducts",
                  [ IsCapCategory, IsList ] );

#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `BraidingWithGivenTensorProducts`.
#! $F: ( s, a, b, r ) \mapsto \mathtt{BraidingWithGivenTensorProducts}(s, a, b, r)$.
#! @Returns nothing
#! @Arguments C, F
DeclareOperation( "AddBraidingWithGivenTensorProducts",
                  [ IsCapCategory, IsFunction ] );

DeclareOperation( "AddBraidingWithGivenTensorProducts",
                  [ IsCapCategory, IsFunction, IsInt ] );

DeclareOperation( "AddBraidingWithGivenTensorProducts",
                  [ IsCapCategory, IsList, IsInt ] );

DeclareOperation( "AddBraidingWithGivenTensorProducts",
                  [ IsCapCategory, IsList ] );
