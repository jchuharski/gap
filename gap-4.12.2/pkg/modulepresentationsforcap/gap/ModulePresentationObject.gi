# SPDX-License-Identifier: GPL-2.0-or-later
# ModulePresentationsForCAP: Category R-pres for CAP
#
# Implementations
#

#############################
##
## Constructors
##
#############################

InstallGlobalFunction( AsLeftOrRightPresentation,
               
  function( matrix, left )
    local ring, presentation_category;
    
    ring := HomalgRing( matrix );
    
    if left = true then
        presentation_category := LeftPresentations( ring );
    else
        presentation_category := RightPresentations( ring );
    fi;
    
    return CreateCapCategoryObjectWithAttributes( presentation_category, UnderlyingMatrix, matrix );
    
end );

##
InstallMethod( UnderlyingHomalgRing,
               [ IsLeftOrRightPresentation ],
               
  obj -> UnderlyingRing( CapCategory( obj ) ) );

##
InstallMethod( AsLeftPresentation,
               [ IsHomalgMatrix ],
               
  matrix -> AsLeftOrRightPresentation( matrix, true ) );

##
InstallMethod( AsRightPresentation,
               [ IsHomalgMatrix ],
               
  matrix -> AsLeftOrRightPresentation( matrix, false ) );

##
InstallMethod( FreeLeftPresentation,
               [ IsInt, IsHomalgRing ],
               
  function( rank, homalg_ring )
    local object;
    
    if rank < 0 then
      
      Error( "rank must be a non-negative integer" );
      
    fi;
    
    object := AsLeftPresentation( HomalgZeroMatrix( 0, rank, homalg_ring ) );
    
    SetIsProjective( object, true );
    
    return object;
    
end );

##
InstallMethod( FreeRightPresentation,
               [ IsInt, IsHomalgRing ],
               
  function( rank, homalg_ring )
    local object;
    
    if rank < 0 then
      
      Error( "rank must be a non-negative integer" );
      
    fi;
    
    object := AsRightPresentation( HomalgZeroMatrix( rank, 0, homalg_ring ) );
    
    SetIsProjective( object, true );
    
    return object;
    
end );

##############################################
##
## Non categorical methods
##
##############################################

##
InstallMethod( Annihilator,
               [ IsLeftPresentation ],
               
  function( module_presentation )
    local ring, number_of_generators, list_of_generators, list_of_kernel_embeddings, ideal_embedding;
    
    ring := UnderlyingHomalgRing( module_presentation );
    
    number_of_generators := NrColumns( UnderlyingMatrix( module_presentation ) );
    
    if number_of_generators = 0 then
        
        return IdentityMorphism( FreeLeftPresentation( 1, ring ) );
        
    fi;
    
    list_of_generators := List( [ 1 .. number_of_generators ], i -> StandardGeneratorMorphism( module_presentation, i ) );
    
    list_of_kernel_embeddings := List( list_of_generators, KernelEmbedding );
    
    ideal_embedding := 
      PreCompose( ProjectionInFactorOfFiberProduct( list_of_kernel_embeddings, 1 ), list_of_kernel_embeddings[1] );
    
    SetIsMonomorphism( ideal_embedding, true );
    
    return ideal_embedding;
    
end );

##
InstallMethod( Annihilator,
               [ IsRightPresentation ],
               
  function( module_presentation )
    local ring, number_of_generators, list_of_generators, list_of_kernel_embeddings, ideal_embedding;
    
    ring := UnderlyingHomalgRing( module_presentation );
    
    number_of_generators := NrRows( UnderlyingMatrix( module_presentation ) );
    
    if number_of_generators = 0 then
        
        return IdentityMorphism( FreeRightPresentation( 1, ring ) );
        
    fi;
    
    list_of_generators := List( [ 1 .. number_of_generators ], i -> StandardGeneratorMorphism( module_presentation, i ) );
    
    list_of_kernel_embeddings := List( list_of_generators, KernelEmbedding );
    
    ideal_embedding := 
      PreCompose( ProjectionInFactorOfFiberProduct( list_of_kernel_embeddings, 1 ), list_of_kernel_embeddings[1] );
    
    SetIsMonomorphism( ideal_embedding, true );
    
    return ideal_embedding;
    
end );

##
InstallMethodWithCacheFromObject( INTERNAL_HOM_EMBEDDING_IN_TENSOR_PRODUCT_LEFT,
                                  [ IsLeftOrRightPresentation, IsLeftOrRightPresentation ],
                                  
  function( object_1, object_2 )
    local underlying_matrix_1, transposed_underlying_matrix_1, identity_matrix_2, differential_matrix, homalg_ring,
          free_module_source, free_module_range, differential;
    
    underlying_matrix_1 := UnderlyingMatrix( object_1 );
    
    transposed_underlying_matrix_1 := TransposedMatrix( underlying_matrix_1 );
    
    identity_matrix_2 := UnderlyingMatrix( IdentityMorphism( object_2 ) );
    
    differential_matrix := KroneckerMat( transposed_underlying_matrix_1, identity_matrix_2 );
    
    homalg_ring := UnderlyingHomalgRing( object_1 );
    
    free_module_source := FreeLeftPresentation( NrColumns( underlying_matrix_1 ), homalg_ring );
    
    free_module_range := FreeLeftPresentation( NrRows( underlying_matrix_1 ), homalg_ring );
    
    differential :=  PresentationMorphism( TensorProductOnObjects( free_module_source, object_2 ),
                                           differential_matrix,
                                           TensorProductOnObjects( free_module_range, object_2 )
                                         );
    
    return KernelEmbedding( differential );
    
end );

##
InstallMethodWithCacheFromObject( INTERNAL_HOM_EMBEDDING_IN_TENSOR_PRODUCT_RIGHT,
                                  [ IsLeftOrRightPresentation, IsLeftOrRightPresentation ],
                                  
  function( object_1, object_2 )
    local underlying_matrix_1, transposed_underlying_matrix_1, identity_matrix_2, differential_matrix, homalg_ring,
          free_module_source, free_module_range, differential;
    
    underlying_matrix_1 := UnderlyingMatrix( object_1 );
    
    transposed_underlying_matrix_1 := TransposedMatrix( underlying_matrix_1 );
    
    identity_matrix_2 := UnderlyingMatrix( IdentityMorphism( object_2 ) );
    
    differential_matrix := KroneckerMat( transposed_underlying_matrix_1, identity_matrix_2 );
    
    homalg_ring := UnderlyingHomalgRing( object_1 );
    
    free_module_source := FreeRightPresentation( NrRows( underlying_matrix_1 ), homalg_ring );
    
    free_module_range := FreeRightPresentation( NrColumns( underlying_matrix_1 ), homalg_ring );
    
    differential :=  PresentationMorphism( TensorProductOnObjects( free_module_source, object_2 ),
                                           differential_matrix,
                                           TensorProductOnObjects( free_module_range, object_2 )
                                         );
    
    return KernelEmbedding( differential );
    
end );


####################################
##
## View
##
####################################

##
InstallMethod( Display,
               [ IsLeftOrRightPresentation ],
               # FIXME: Fix the rank in GenericView and delete this afterwards
               9999,
               
  function( object )
    
    Display( UnderlyingMatrix( object ) );
    
    Print( "\n" );
    
    Print( StringMutable( object ) );
    
    Print( "\n" );
    
end );
