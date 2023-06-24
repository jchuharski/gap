#############################################################################
##
#M  IsIsomorphicGroup( <G>, <H> ) . . Check if two groups G, H are isomorphic
##  V0.2 3.10.94
##  The return value is 'false' iff G and H are not isomorphic
##

InstallMethod(
	IsIsomorphicGroup,
	"test all",
	true,
	[IsGroup, IsGroup],
	0,
  function( G, H )
    return not ( IsomorphismGroups( G, H ) = fail );
  end );

InstallMethod(
	IsIsomorphicGroup,
	"both abelian",
	true,
	[IsGroup, IsGroup],
	100,
  function( G, H )
    if IsAbelian(G) <> IsAbelian(H) then
	return false;
    else
	TryNextMethod();
    fi;
  end );

InstallMethod(
	IsIsomorphicGroup,
	"same size",
	true,
	[IsGroup, IsGroup],
	90,
  function( G, H )
    if Size(G) <> Size(H) then
	return false;
    else
	TryNextMethod();
    fi;
  end );

InstallMethod(
	IsIsomorphicGroup,
	"small groups",
	true,
	[IsGroup, IsGroup],
	85,
  function ( G , H )
    if Size(G)<=1000 and not (Size(G) in [256,512,768]) then
	return IdGroup(G)=IdGroup(H);
    else
	TryNextMethod();
    fi;
  end );

InstallMethod(
	IsIsomorphicGroup,
	"centres of equal size",
	true,
	[IsGroup, IsGroup],
	80,
  function( G, H )
    if Size(Centre(G)) <> Size(Centre(H)) then
	return false;
    else
	TryNextMethod();
    fi;
  end );

InstallMethod(
	IsIsomorphicGroup,
	"commutator subgroups of equal size",
	true,
	[IsGroup, IsGroup],
	70,
  function( G, H )
    if Size(DerivedSubgroup(G)) <> Size(DerivedSubgroup(H)) then
	return false;
    else
	TryNextMethod();
    fi;
  end );

InstallMethod(
	IsIsomorphicGroup,
	"elements of the same order",
	true,
	[IsGroup, IsGroup],
	60,
  function( G, H )
    if Collected( List( AsList(G), Order ) ) <>
	Collected( List( AsList(H), Order ) ) then
		return false;
    else
		TryNextMethod();
    fi;
  end );

#############################################################################
##
#F  Subgroups ( <G> )		a list of all subgroups of <G>

Subgroups := function ( G )
local sgrps, sg;
  
  sgrps := Flat( List( ConjugacyClassesSubgroups( G ), AsList ) );
  for sg in sgrps do
    SetParent( sg, Parent(G) );
  od;

  return sgrps;
end;

##############################################################################
##
#M  OneGeneratedNormalSubgroups ( <G> ) 
##
##    Computes a list of all normal subgroups of <G>
##    that are generated by one element. 
##

#InstallMethod(
#	OneGeneratedNormalSubgroups,
#	"default",
#	true,
#	[IsGroup],
#	0,
#  function (G)
#    return List (
#                 ConjugacyClasses (G),
#                 C -> NormalClosure (G,
#                                     Subgroup (G, [Representative (C)])
#                                    ) 
#                );
#  end );

#####################################################################
##
#F IsInvariantUnderMaps ( <G>, <U>, <maps>)
##
## returns true iff the subgroup <U> is invariant under
## all mappings in <maps>. All m in <maps> operate on <G>.
##

IsInvariantUnderMaps := function ( G, U, maps )
  return ForAll (maps,
                 m -> IsSubset (U,
                                Images (m, U)
                               )
                );
end;

#####################################################################
##
#M  IsCharacteristic ( <G>, <U> )  
##  replaced by GAP-function IsCharacteristicSubgroup
##
#
#InstallMethod(
#	IsCharacteristic,
#	"default",
#	IsIdenticalObj,
#	[IsGroup, IsGroup],
#	0,
#  function (G, U)
#    return IsInvariantUnderMaps (G, U, Automorphisms (G));
#  end );

#####################################################################
##
#M  IsCharacteristicInParent ( <U> )
##

InstallMethod(
	IsCharacteristicInParent,
	"default",
	true,
	[IsGroup],
	0,
  function ( U )
    return IsCharacteristicSubgroup( Parent(U), U );
  end );

#####################################################################
##
#M  IsFullinvariant ( <G>, <U> )
##

InstallMethod(
	IsFullinvariant,
	"default",
	IsIdenticalObj,
	[IsGroup, IsGroup],
	0,
  function (G, U)
   return IsInvariantUnderMaps (G, U, Endomorphisms (G));
  end );

#####################################################################
##
#M  IsFullinvariantInParent ( <U> )
##

InstallMethod(
	IsFullinvariantInParent,
	"default",
	true,
	[IsGroup],
	0,
  function ( U )
    return IsFullinvariant( Parent(U), U );
  end );

#####################################################################
##
#M  AsPermGroup

InstallMethod(
	AsPermGroup,
	"perm groups",
	true,
	[IsPermGroup],
	1000,
  G -> G );

InstallMethod( AsPermGroup, [IsGroup],
  G -> Image( IsomorphismPermGroup( G ) ) );

#####################################################################
##
#M  PrintTable2

InstallMethod(
	PrintTable2,
	"groups",
	true,
	[IsGroup, IsString],
	0,
  function ( G, mode )
  # mode is simply ignored here!  
  local elms,    # the elements of the group
        n,       # the size of the group
        symbols, # a list of the symbols for the elements of the group
        tw,      # the width of a table
        spc,     # local function which prints the right number of spaces
        bar,     # local function for printing the right length of the bar
        ind,     # help variable, an index
        i,j,     # loop variables
  	max;     # length of the longest symbol string

    elms    := AsSSortedList( G );
    n       := Length( elms );
    symbols := Symbols( G );

    max := Maximum( List( symbols, Length ) );

    # compute the number of characters per line required for the table
    tw := (max+1)*(n+1) + 2;

    if SizeScreen()[1] - 3 < tw then
      Print( "The table of a group of order ", n, " will not ",
           "look\ngood on a screen with ", SizeScreen()[1], " characters per ", 
           "line.\nHowever, you may want to set your line length to a ",
           "greater\nvalue by using the GAP function 'SizeScreen'.\n" );
      return;
    fi;

    spc := function( i )
	   return String( 
		Concatenation( List( [Length(symbols[i])..max+1], j -> " " ) )
			);
    end;

    bar     := function()
               return String( Concatenation( List( [0..max+1], i -> "-" ) ) );
    end;

    Print( "Let:\n" );
    for i in [1..n] do Print( symbols[i], " := ", elms[i], "\n" ); od;
  
    # print the addition table
    Print("\n");
    for i in [1..max+1] do Print(" "); od;
    Print( "*  | " ); 
    for i in [1..n] do Print( symbols[i], spc(i) ); od;
    Print( "\n  ", bar() ); for i in [1..n] do Print( bar() ); od;
    for i in [1..n] do
      Print( "\n  ", symbols[i], spc(i), "| " );
      for j in [1..n] do
	ind := Position( elms, elms[i] * elms[j] );
	Print( symbols[ ind ], spc(ind) );  
      od;
    od;
    Print("\n");
  end );

#####################################################################
##
#F  PrintTable( <domain> [, <mode>] )	print the operation table of
##					a group or a nearring.
## 		With nearrings <mode> can be used to specify which
##		information should be printed:
##			'e': information about the elements
##			'a': addition table
##			'm': multiplication table
##		the default value for mode is "eam" 

InstallGlobalFunction(
	PrintTable,
  function ( arg )
    if Length(arg)=1 then
	PrintTable2(arg[1],"eam");
    else
	PrintTable2(arg[1],arg[2]);
    fi;
  end);

#####################################################################
##
#F  IdTWGroup ( <G> )	returns the Thomas/Wood group classification
##			number of the group <G> as a pair of integers

IdTWGroup := function ( G )
local table, id;
  if Size(G)>32 then
	Error("group must be of order at most 32");
  fi;

  # table is a translation table between GAP and Thomas/Wood notation
  table := [
	[1],
	[1],
	[1],
	[1,2],
	[1],
	[2,1],
	[1],
	[1,2,4,5,3],
	[1,2],
	[2,1],
	[1],
	[5,1,4,3,2],
	[1],
	[2,1],
	[1],
	[1,3,9,10,2,11,12,13,14,4,6,7,8,5],
	[1],
	[4,1,3,5,2],
	[1],
	[4,1,5,3,2],
	[2,1],
	[2,1],
	[1],
	[14,1,13,11,9,10,6,15,2,7,8,12,5,4,3],
	[1,2],
	[2,1],
	[1,2,4,5,3],
	[4,1,3,2],
	[1],
	[3,2,4,1],
	[1],
	[1,18,3,19,20,46,47,48,27,28,31,21,30,29,32,2,22,49,50,51,5,11,
	 12,16,14,15,33,36,37,38,39,40,41,34,35,4,13,17,23,24,25,26,44,
	 45,6,8,9,10,42,43,7],
  ];

  # ask GAP
  id := IdGroup(G);

  # translate
  return [id[1],table[id[1]][id[2]]];
end;

#####################################################################
##
#M  RepresentativesModNormalSubgroup
##

InstallMethod(
	RepresentativesModNormalSubgroup,
	"default",
	IsIdenticalObj,
	[IsGroup, IsGroup],
	0,
  function ( G, N )
    return List( RightCosets( G, N ), Representative );
  end );

#####################################################################
##
#M  NontrivialRepresentativesModNormalSubgroup
##

InstallMethod(
	NontrivialRepresentativesModNormalSubgroup,
	"default",
	IsIdenticalObj,
	[IsGroup, IsGroup],
	0,
  function ( G, N )
  local RmNSg;

    RmNSg := RepresentativesModNormalSubgroup( G, N );
    return RmNSg{[2..Length(RmNSg)]};
  end );

#############################################################################
##
#M  ScottLength
##

#PrincipalSeries := function (G)
#
#  returns one principal series of G
#
#   local N, i, principalSeries, lastadded;
#
#   N := NormalSubgroups (G);
#  Print ("\n1\n");
#   principalSeries := [G];
#   lastadded := G;
#   
#   i := Length (N) - 1;
#   while i >= 1 do
#      if IsSubgroup (lastadded, N[i]) then 
#         Add (principalSeries, N[i]);
#         lastadded := N[i];
#      fi;
#      i := i - 1;
#   od;
#
#   return principalSeries;
#end;
     
InstallGlobalFunction(
	ScottSigma,

  function (G, N1, N2)

   if (not IsSubgroup (N1, N2)) or (Size (N2) = Size (N1)) then
      Error ("length.x : Wrong order of parameters");
   fi;

   if IsSubgroup (N2, CommutatorSubgroup (G, N1)) then
      return Size (N1) / Size (N2);
   else
      return 1;
   fi;
  
end );
      
InstallMethod(
	ScottLength,
	"abelian",
	true,
	[IsGroup and IsAbelian],
	0,
  function ( G )
    return Exponent( G );
  end );

BindGlobal( "FindKInPGroup",
 function ( PG )
# find a k in a p-group PG s.t. kx = [x,pi] for a pi and k
    local info,		# the return-value
	  p,		# which p-group
	  ExpG,		# the exponent of PG is p^ExpG
	  ExpZ,		# the same for Z(PG)
	  ExpGz,	# the same for PG/Z(PG)
	  ExpGk,	# the same for PG/K(PG)
	  LowerBound,
	  UpperBound,	# bounds for k
	  possibilities,# possible values for k
	  k,		# a possible value for k
	  gens, l, indices, indx, pi, orders;

    info := rec (exponent := Exponent(PG));

    if 		IsAbelian(PG) 
		or IsPrime(Exponent(PG)) # Corollary 4
		or Exponent(PG)=4 # Corollary 8
		then
	info.IsSmall := false;
	info.k := Exponent(PG);
	return info;
    fi;

    p := Factors(Exponent(PG))[1];

    ExpG := Length(Factors(Exponent(PG)));
    UpperBound := ExpG - 1;
    LowerBound := 1;

    # Corollary 7
    if p=2 then
    	LowerBound := Maximum(LowerBound,EuclideanQuotient(ExpG+2,2));
    else
	LowerBound := Maximum(LowerBound,EuclideanQuotient(ExpG+1,2));
    fi;

    # Corollary 11 (replaces C. 6 and C. 10) & 12
    ExpGz := Length(Factors(Exponent(PG/Centre(PG))));
    LowerBound := Maximum(LowerBound,ExpG-ExpGz);

    if LowerBound > UpperBound then
	info.IsSmall := false;
	info.k := p^ExpG;
	return info;
    fi;

    # Proposition 7
    ExpGk := Length(Factors(Exponent(PG/DerivedSubgroup(PG))));
    LowerBound := Maximum(LowerBound,ExpGk);

    if LowerBound > UpperBound then
	info.IsSmall := false;
	info.k := p^ExpG;
	return info;
    fi;

    # Trying Out the k's beginning with the smallest

    possibilities := List([LowerBound..UpperBound],i->p^i);

    for k in possibilities do
	# Proposition 9
	if IsSubset(Centre(PG), Set(List(PG,x->x^k)))
	  and
	# Proposition 14
	ForAll(Combinations(Filtered(GeneratorsOfGroup(PG),
	    gen->gen^k<>Identity(PG)),2),
		gen->Comm(gen[1],gen[2])^(k*(k-1)/2)=Identity(PG))
	then
	   gens := GeneratorsOfGroup(PG);
	   l := Length(gens);
	   orders := List( gens, Order );
	   indices := Cartesian(List(orders, o -> [1..o]));
	   for indx in indices do
		pi := Product(List([1..l], i -> gens[i]^indx[i]));
	        if pi^k=Identity(PG) and
		   pi^(p^(ExpG-1)/k)<>Identity(PG) and 
		   ForAll(GeneratorsOfGroup(PG),gen->gen^k=Comm(gen,pi)) then
			info.IsSmall := true;
			info.k := k;
			return info;
		fi;
	   od;
	fi;
    od;

    info.IsSmall := false;
    info.k := Exponent(PG);
    return info;

end );


BindGlobal( "FindKInGroup",
 function ( G )
# find a possible k in the group G
    local pees,		# values for p with nontrivial p-Sylow subgroup
	  SylowSgps,	# the corresponding p-Sylow subgroups
	  SSgInfo;	# information about possible k's
			# for the Sylow subgroups

    pees := Set(Factors(Size(G)));
    SylowSgps := List(pees,p->SylowSubgroup(G,p));

    SSgInfo := List(SylowSgps,ssg->FindKInPGroup(ssg));

    return Product(List(SSgInfo,info->info.k));
end );

InstallMethod(
	ScottLength,
	"nilpotent of class 2",
	true,
	[IsGroup],
	2,
  function ( G )
    if not IsNilpotent( G ) or NilpotencyClassOfGroup( G ) <> 2 then
	TryNextMethod();
    fi;

    return FindKInGroup( G );
  end );

InstallMethod(
	ScottLength,
	"default",
	true,
	[IsGroup],
	0,
  function ( G )

#  Computes the length of a group according to 
#  Scott, Monatshefte f. Math 73, 250 - 267 (1969)
#    
   local primes, principalSeries, product, i, N, 
	 n, p, IG, length, primepowerList;
       
#     N := NormalSubgroups (G);
#     principalSeries := PrincipalSeries (G);
     principalSeries := ChiefSeries (G);
     product := 1;
     for i in [1..Length (principalSeries) - 1] do
       product := product *
		  ScottSigma( G, principalSeries[i], principalSeries[i + 1] );
     od;

     primes := Set( FactorsInt(product) );

     if product <> 1 then
       IG := InnerAutomorphismNearRing( G ); 
       length := 1;
       for p in primes do
          n := 1;
          while 
              MOD( Exponent(G), p^(n+1) ) = 0 and
              MOD( product, p ^ (n+1) ) = 0 and 
              ( Size( InnerAutomorphismNearRing(
			DirectProduct( G, CyclicGroup( p^(n+1) ) )
		    )                          ) 
               =
               Size (IG)
	      ) do
             n := n+1;
          od;
#                now n has the maximal possible value
         length := length * p^n;
       od;

       return length;
     else
       return 1;
     fi; 
  end );

#############################################################################
##
#M  TWGroup
##

InstallMethod(
	TWGroup,
	"default",
	true,
	[IsInt and IsPosRat, IsInt and IsPosRat],
	0,
  function ( size, nr )
  if size = 1 then
	if nr = 1 then
		return Group( () );
	fi;
  elif size = 2 then
	if nr = 1 then
		return GTW2_1;
	fi;
  elif size = 3 then
	if nr = 1 then
		return GTW3_1;
	fi;
  elif size = 4 then
	if nr = 1 then
		return GTW4_1;
	elif nr = 2 then
		return GTW4_2;
	fi;
  elif size = 5 then
	if nr = 1 then
		return GTW5_1;
	fi;
  elif size = 6 then
	if nr = 1 then
		return GTW6_1;
	elif nr = 2 then
		return GTW6_2;
	fi;
  elif size = 7 then
	if nr = 1 then
		return GTW7_1;
	fi;
  elif size = 8 then
	if nr = 1 then
		return GTW8_1;
	elif nr = 2 then
		return GTW8_2;
	elif nr = 3 then
		return GTW8_3;
	elif nr = 4 then
		return GTW8_4;
	elif nr = 5 then
		return GTW8_5;
	fi;
  elif size = 9 then
	if nr = 1 then
		return GTW9_1;
	elif nr = 2 then
		return GTW9_2;
	fi;
  elif size = 10 then
	if nr = 1 then
		return GTW10_1;
	elif nr = 2 then
		return GTW10_2;
	fi;
  elif size = 11 then
	if nr = 1 then
		return GTW11_1;
	fi;
  elif size = 12 then
	if nr = 1 then
		return GTW12_1;
	elif nr = 2 then
		return GTW12_2;
	elif nr = 3 then
		return GTW12_3;
	elif nr = 4 then
		return GTW12_4;
	elif nr = 5 then
		return GTW12_5;
	fi;
  elif size = 13 then
	if nr = 1 then
		return GTW13_1;
	fi;
  elif size = 14 then
	if nr = 1 then
		return GTW14_1;
	elif nr = 2 then
		return GTW14_2;
	fi;
  elif size = 15 then
	if nr = 1 then
		return GTW15_1;
	fi;
  elif size = 16 then
	if nr = 1 then
		return GTW16_1;
	elif nr = 2 then
		return GTW16_2;
	elif nr = 3 then
		return GTW16_3;
	elif nr = 4 then
		return GTW16_4;
	elif nr = 5 then
		return GTW16_5;
	elif nr = 6 then
		return GTW16_6;
	elif nr = 7 then
		return GTW16_7;
	elif nr = 8 then
		return GTW16_8;
	elif nr = 9 then
		return GTW16_9;
	elif nr = 10 then
		return GTW16_10;
	elif nr = 11 then
		return GTW16_11;
	elif nr = 12 then
		return GTW16_12;
	elif nr = 13 then
		return GTW16_13;
	elif nr = 14 then
		return GTW16_14;
	fi;
  elif size = 17 then
	if nr = 1 then
		return GTW17_1;
	fi;
  elif size = 18 then
	if nr = 1 then
		return GTW18_1;
	elif nr = 2 then
		return GTW18_2;
	elif nr = 3 then
		return GTW18_3;
	elif nr = 4 then
		return GTW18_4;
	elif nr = 5 then
		return GTW18_5;
	fi;
  elif size = 19 then
	if nr = 1 then
		return GTW19_1;
	fi;
  elif size = 20 then
	if nr = 1 then
		return GTW20_1;
	elif nr = 2 then
		return GTW20_2;
	elif nr = 3 then
		return GTW20_3;
	elif nr = 4 then
		return GTW20_4;
	elif nr = 5 then
		return GTW20_5;
	fi;
  elif size = 21 then
	if nr = 1 then
		return GTW21_1;
	elif nr = 2 then
		return GTW21_2;
	fi;
  elif size = 22 then
	if nr = 1 then
		return GTW22_1;
	elif nr = 2 then
		return GTW22_2;
	fi;
  elif size = 23 then
	if nr = 1 then
		return GTW23_1;
	fi;
  elif size = 24 then
	if nr = 1 then
		return GTW24_1;
	elif nr = 2 then
		return GTW24_2;
	elif nr = 3 then
		return GTW24_3;
	elif nr = 4 then
		return GTW24_4;
	elif nr = 5 then
		return GTW24_5;
	elif nr = 6 then
		return GTW24_6;
	elif nr = 7 then
		return GTW24_7;
	elif nr = 8 then
		return GTW24_8;
	elif nr = 9 then
		return GTW24_9;
	elif nr = 10 then
		return GTW24_10;
	elif nr = 11 then
		return GTW24_11;
	elif nr = 12 then
		return GTW24_12;
	elif nr = 13 then
		return GTW24_13;
	elif nr = 14 then
		return GTW24_14;
	elif nr = 15 then
		return GTW24_15;
	fi;
  elif size = 25 then
	if nr = 1 then
		return GTW25_1;
	elif nr = 2 then
		return GTW25_2;
	fi;
  elif size = 26 then
	if nr = 1 then
		return GTW26_1;
	elif nr = 2 then
		return GTW26_2;
	fi;
  elif size = 27 then
	if nr = 1 then
		return GTW27_1;
	elif nr = 2 then
		return GTW27_2;
	elif nr = 3 then
		return GTW27_3;
	elif nr = 4 then
		return GTW27_4;
	elif nr = 5 then
		return GTW27_5;
	fi;
  elif size = 28 then
	if nr = 1 then
		return GTW28_1;
	elif nr = 2 then
		return GTW28_2;
	elif nr = 3 then
		return GTW28_3;
	elif nr = 4 then
		return GTW28_4;
	fi; 
  elif size = 29 then
	if nr = 1 then
		return GTW29_1;
	fi;
  elif size = 30 then
	if nr = 1 then
		return GTW30_1;
	elif nr = 2 then
		return GTW30_2;
	elif nr = 3 then
		return GTW30_3;
	elif nr = 4 then
		return GTW30_4;
	fi; 
  elif size = 31 then
	if nr = 1 then
		return GTW31_1;
	fi;
  elif size = 32 then
	if nr = 1 then
		return GTW32_1;
	elif nr = 2 then
		return GTW32_2;
	elif nr = 3 then
		return GTW32_3;
	elif nr = 4 then
		return GTW32_4;
	elif nr = 5 then
		return GTW32_5;
	elif nr = 6 then
		return GTW32_6;
	elif nr = 7 then
		return GTW32_7;
	elif nr = 8 then
		return GTW32_8;
	elif nr = 9 then
		return GTW32_9;
	elif nr = 10 then
		return GTW32_10;
	elif nr = 11 then
		return GTW32_11;
	elif nr = 12 then
		return GTW32_12;
	elif nr = 13 then
		return GTW32_13;
	elif nr = 14 then
		return GTW32_14;
	elif nr = 15 then
		return GTW32_15;
	elif nr = 16 then
		return GTW32_16;
	elif nr = 17 then
		return GTW32_17;
	elif nr = 18 then
		return GTW32_18;
	elif nr = 19 then
		return GTW32_19;
	elif nr = 20 then
		return GTW32_20;
	elif nr = 21 then
		return GTW32_21;
	elif nr = 22 then
		return GTW32_22;
	elif nr = 23 then
		return GTW32_23;
	elif nr = 24 then
		return GTW32_24;
	elif nr = 25 then
		return GTW32_25;
	elif nr = 26 then
		return GTW32_26;
	elif nr = 27 then
		return GTW32_27;
	elif nr = 28 then
		return GTW32_28;
	elif nr = 29 then
		return GTW32_29;
	elif nr = 30 then
		return GTW32_30;
	elif nr = 31 then
		return GTW32_31;
	elif nr = 32 then
		return GTW32_32;
	elif nr = 33 then
		return GTW32_33;
	elif nr = 34 then
		return GTW32_34;
	elif nr = 35 then
		return GTW32_35;
	elif nr = 36 then
		return GTW32_36;
	elif nr = 37 then
		return GTW32_37;
	elif nr = 38 then
		return GTW32_38;
	elif nr = 39 then
		return GTW32_39;
	elif nr = 40 then
		return GTW32_40;
	elif nr = 41 then
		return GTW32_41;
	elif nr = 42 then
		return GTW32_42;
	elif nr = 43 then
		return GTW32_43;
	elif nr = 44 then
		return GTW32_44;
	elif nr = 45 then
		return GTW32_45;
	elif nr = 46 then
		return GTW32_46;
	elif nr = 47 then
		return GTW32_47;
	elif nr = 48 then
		return GTW32_48;
	elif nr = 49 then
		return GTW32_49;
	elif nr = 50 then
		return GTW32_50;
	elif nr = 51 then
		return GTW32_51;
	fi;
  fi;
  Error( "sorry, no group ",size,"/",nr );

  end );

#####################################################################
##
#M  Symbols
##

InstallMethod(
	Symbols,
	"groups",
	true,
	[IsGroup],
	0,
  function ( G )
    return List( [1..Size(G)], i -> 
			String( Concatenation( "g", String(i-1) ) ) );
  end );

#############################################################################
##
#M  FastImageOfProjection

InstallMethod(
	FastImageOfProjection,
	"perm groups - very dangerous !!!",
	true,
	[IsGroup and IsPermGroup, IsMultiplicativeElementWithInverse,
		IsInt and IsPosRat],
	0,
  function( DP, dpElm, i )
  local G, d, list, inv_perm;
    G := DirectProductInfo( DP ).groups[1];
    inv_perm := (DirectProductInfo( DP ).perms[1])^-1;
    d := Length( MovedPoints( G ) );
#    if dpElm = () then
#	list := [];
#    else
	list := ListPerm( dpElm );
#    fi;
    if Length(list) < d*Size(G) then
	list := Concatenation( list, [Length(list)+1..d*Size(G)] );
    fi;
    list := List( list{[d*(i-1)+1..d*i]}, k -> k-d*(i-1) );
    return PermList( list )^inv_perm;

  end );

InstallMethod(
	FastImageOfProjection,
	"standard",
	true,
	[IsGroup, IsMultiplicativeElementWithInverse, IsInt and IsPosRat],
	0,
  function( DP, dpElm, i )
    return dpElm^Projection( DP, i );
  end );

