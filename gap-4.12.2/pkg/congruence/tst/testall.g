LoadPackage( "congruence" );

TestDirectory(DirectoriesPackageLibrary( "congruence", "tst" ),
  rec(exitGAP     := true,
      testOptions := rec(compareFunction := "uptowhitespace") ) );

FORCE_QUIT_GAP(1); # if we ever get here, there was an error

