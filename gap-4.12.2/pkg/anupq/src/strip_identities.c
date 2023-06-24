/****************************************************************************
**
*A  strip_identities.c          ANUPQ source                   Eamonn O'Brien
**
*Y  Copyright 1995-2001,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
*Y  Copyright 1995-2001,  School of Mathematical Sciences, ANU,     Australia
**
*/

#include "pq_defs.h"
#include "pcp_vars.h"
#include "pga_vars.h"
#include "pq_functions.h"

/* find the non-identity permutations in the soluble subgroup of
   the automorphism group generated by the central automorphisms
   and record the correspondence from the non-identity automorphisms
   to the non-identity permutations */

void strip_identities(int ***auts, struct pga_vars *pga, struct pcp_vars *pcp)
{
   register int alpha;
   int **A; /* automorphism matrix */
   int nmr_soluble = pga->nmr_soluble;

   pga->nmr_of_perms = 0;

   /* set up space for automorphism matrix */
   A = allocate_matrix(pga->q, pga->q, 0, FALSE);
   pga->map = allocate_vector(pga->m, 1, TRUE);

   for (alpha = 1; alpha <= pga->m; ++alpha) {
      if (alpha <= nmr_soluble)
         assemble_matrix(A, pga->q, auts[alpha], pcp);
      if (alpha > nmr_soluble || !is_identity(A, pga->q, 0)) {
         ++pga->nmr_of_perms;
         pga->map[alpha] = pga->nmr_of_perms;
      }
   }

   /* EOB - new 26/7/00 */

   pga->nmr_of_perms = 0;
   for (alpha = 1; alpha <= pga->m; ++alpha) {
      ++pga->nmr_of_perms;
      pga->map[alpha] = pga->nmr_of_perms;
   }

   /*
     printf ("The map from auts to perms is ");
     print_array (pga->map, 1, pga->m + 1);
     */

   free_matrix(A, pga->q, 0);
}
