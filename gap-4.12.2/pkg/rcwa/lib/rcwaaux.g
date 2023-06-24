#############################################################################
##
#W  rcwaaux.g                 GAP4 Package `RCWA'                 Stefan Kohl
##
##  This file contains auxiliary functions for the RCWA package.
##
#############################################################################

#############################################################################
##
#S  Testing the examples. ///////////////////////////////////////////////////
##
#############################################################################

#############################################################################
##
#F  RCWATestExamples( ) . . . . . . . . . .  test examples in the RCWA manual
##
##  Tests the examples in the manual of the RCWA package.
##
BindGlobal( "RCWATestExamples",

  function ( )

    local  path;

    path := GAPInfo.PackagesInfo.("rcwa")[1].InstallationPath;
    RunExamples(ExtractExamples(Concatenation(path,"/doc"),
                                "main.xml",[],"Chapter"),
                rec( width := 75, compareFunction := "uptowhitespace" ) );
  end );

#############################################################################
##
#S  Test utilities. /////////////////////////////////////////////////////////
##
#############################################################################

#############################################################################
##
#F  RCWATestInstall( ) . . . . quick test whether RCWA is installed correctly
##
##  Performs a nontrivial computation to check whether an installation of
##  RCWA appears to work.
##
BindGlobal( "RCWATestInstall",

  function ( )
    RESCLASSES_ASSERTIONLEVEL_BACKUP := AssertionLevel();
    return Test( Filename( DirectoriesPackageLibrary( "rcwa", "tst" ),
                           "testinstall.tst" ) );
  end );

#############################################################################
##
#F  RCWATestAll( ) . . . . . . . . . . . . . . . . . . . . .  RCWA test suite
##
##  Runs the full test suite of the RCWA package.
##
BindGlobal( "RCWATestAll",

  function ( )
    RESCLASSES_ASSERTIONLEVEL_BACKUP := AssertionLevel();
    return TestDirectory( DirectoriesPackageLibrary( "rcwa", "tst" ) );
  end );

#############################################################################
##
#F  RCWADoThingsToBeDoneBeforeTest(  )
#F  RCWADoThingsToBeDoneAfterTest(  )
##
BindGlobal( "RCWADoThingsToBeDoneBeforeTest",

  function ( )
    RESCLASSES_WARNINGLEVEL_BACKUP := InfoLevel(InfoWarning);;
    SetInfoLevel(InfoWarning,0);
    SetAssertionLevel(0);
    RESCLASSES_VIEWINGFORMAT_BACKUP := RESCLASSES_VIEWINGFORMAT;;
    ResidueClassUnionViewingFormat("short");
  end );

BindGlobal( "RCWADoThingsToBeDoneAfterTest",

  function ( )
    ResidueClassUnionViewingFormat(RESCLASSES_VIEWINGFORMAT_BACKUP);
    SetAssertionLevel(RESCLASSES_ASSERTIONLEVEL_BACKUP);
    SetInfoLevel(InfoWarning,RESCLASSES_WARNINGLEVEL_BACKUP);
  end );

#############################################################################
##
#F  RCWACheckDatabaseOfGroupsGeneratedBy3ClassTranspositions( startmod )
##
##  This function checks the data library of groups generated by 3 class
##  transpositions which interchange residue classes with moduli <= 6.
##  It raises an error if there is a difference between a database entry and
##  the result of an attempt to recompute that entry. The function runs rela-
##  tively long, and it is recommended to set the `InfoLevel' of `InfoRCWA'
##  to 2 in order to get information on the progress of the checks.
##
BindGlobal( "RCWACheckDatabaseOfGroupsGeneratedBy3ClassTranspositions",

  function ( startmod )

    local  data, cts, grps, sizes, mods, modset, errors,
           pos, i, m, n, m0, n0;

    Info(InfoRCWA,2,"Checking database of groups generated by 3 class ",
                    "transpositions ...");

    data := LoadDatabaseOfGroupsGeneratedBy3ClassTranspositions();

    cts  := List(ClassPairs(6),ClassTransposition);;
    grps := List(Combinations(cts,3),Group);;

    if   cts <> data.cts or grps <> data.grps
    then Error("*** List of groups is corrupted!!! ***"); fi;

    cts  := List(cts,SparseRep);
    grps := List(Combinations(cts,3),Group);;

    mods  := data.mods;
    sizes := data.sizes;

    modset := Filtered(Set(mods),m->m>=startmod);
    errors := [];

    for m in modset do
      Info(InfoRCWA,2,"Checking groups with modulus m = ",m);
      pos := Positions(mods,m);
      Info(InfoRCWA,2,"There are ",Length(pos)," such groups.");
      Info(InfoRCWA,2,"They have ",Length(Set(sizes{pos})),
                      " different orders.");
      for i in pos do
        n  := sizes[i];
        m0 := Mod(grps[i]:AssumeIsTame);
        n0 := Size(grps[i]);
        Info(InfoRCWA,2,"|grps[",i,"]| = ",n0);
        if m0 <> m or n0 <> n then
          if m0 <> m then Error("*** Modulus discrepancy!!! ***"); fi;
          if n0 <> n then Error("*** Order discrepancy!!! ***"); fi;
          Add(errors,rec(i:=i,m_wrong:=m ,n_wrong:=n,
                              m_right:=m0,n_right:=n0));
          Print("Errors =\n",errors,"\n");
        fi;
      od;
    od;

    return errors;
  end );

#############################################################################
##
#S  Other. //////////////////////////////////////////////////////////////////
##
#############################################################################

#############################################################################
##
#F  CompressWhitespace( <src>, <dest> )
##
##  Utility function used to compress whitespace in data files.
##
BindGlobal( "CompressWhitespace",

  function ( src, dest )

    local  str;

    str := StringFile(src);
    str := ReplacedString(str,", ",",");
    str := ReplacedString(str," ]","]");
    str := ReplacedString(str,"[ ","[");
    str := ReplacedString(str,"  "," ");
    str := ReplacedString(str," \n],","],\n");
    FileString(dest,str);
  end );

ResidueClassUnionViewingFormat( "short" );

#############################################################################
##
#E  rcwaaux.g . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here