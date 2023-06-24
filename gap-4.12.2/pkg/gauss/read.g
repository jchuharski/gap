# SPDX-License-Identifier: GPL-2.0-or-later
# Gauss: Extended Gauss functionality for GAP
#
# Reading the implementation part of the package.
#

################################
# First look after our C part: #
################################

# load kernel function if it is installed:
if (not IsBound(SYMMETRIC_DIFFERENCE_OF_ORDERED_SETS_OF_SMALL_INTEGERS)) and ("gauss" in SHOW_STAT()) then
  # try static module
  LoadStaticModule("gauss");
elif (not IsBound(SYMMETRIC_DIFFERENCE_OF_ORDERED_SETS_OF_SMALL_INTEGERS)) and
   (Filename(DirectoriesPackagePrograms("gauss"), "gauss.so") <> fail) then
  LoadDynamicModule(Filename(DirectoriesPackagePrograms("gauss"), "gauss.so"));
else
  ReadPackage( "Gauss", "gap/SymmetricDifference.gd" );
  ReadPackage( "Gauss", "gap/SymmetricDifference.gi" );
fi;

ReadPackage( "Gauss", "gap/GaussDense.gi" );

##

ReadPackage( "Gauss", "gap/SparseMatrix.gi" );

ReadPackage( "Gauss", "gap/SparseMatrixGF2.gi" );

##

ReadPackage( "Gauss", "gap/Sparse.gi" );

ReadPackage( "Gauss", "gap/GaussSparse.gi" );

ReadPackage( "Gauss", "gap/GaussSparseGF2.gi" );

ReadPackage( "Gauss", "gap/HermiteSparse.gi" );

