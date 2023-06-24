#
# profiling: Line by line profiling and code coverage for GAP
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "profiling",
Subtitle := "Line by line profiling and code coverage for GAP",
Version := "2.5.1",
Date := "10/10/2022", # dd/mm/yyyy format
License := "MIT AND CDDL-1.0",

Persons := [
  rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "Christopher",
    LastName := "Jefferson",
    WWWHome := "https://caj.host.cs.st-andrews.ac.uk/",
    Email := "caj21@st-andrews.ac.uk",
    PostalAddress := Concatenation(
               "St Andrews\n",
               "Scotland\n",
               "UK" ),
    Place := "St Andrews",
    Institution := "University of St Andrews",
  ),
],

PackageWWWHome := "https://gap-packages.github.io/profiling/",

ArchiveURL     := Concatenation("https://github.com/gap-packages/profiling/",
                                "releases/download/v", ~.Version,
                                "/profiling-", ~.Version),
README_URL     := Concatenation( ~.PackageWWWHome, "README.md" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "deposited",

SourceRepository := rec( 
  Type := "git", 
  URL := "https://github.com/gap-packages/profiling"
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "profiling",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Line by line profiling and code coverage for GAP",
),

Dependencies := rec(
  GAP := ">= 4.10",
  NeededOtherPackages := [ [ "GAPDoc", ">= 1.5" ], ["IO", ">= 4.4.4" ] ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := function()
        local so_exists;
        so_exists := (Filename(DirectoriesPackagePrograms("profiling"), "profiling.so") <> fail);
        if not(so_exists) then
          Info(InfoWarning, 1, "Kernel extension not built for profiling package");
        fi;
        return so_exists;
    end,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],

));
