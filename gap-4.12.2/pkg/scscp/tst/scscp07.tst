# scscp, chapter 7
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been autogenerated with GAP. It contains examples
# extracted from the documentation. Each example is preceded by the
# comment which points to the location of its source.
#
gap> START_TEST( "scscp07.tst");

# doc/examples.xml:71-84
gap> LoadPackage("anupq", false);
true
gap> G := DihedralGroup( 512 );            
<pc group of size 512 with 9 generators>
gap> F := PqStandardPresentation( G );
<fp group on the generators [ f1, f2, f3, f4, f5, f6, f7, f8, f9 ]>
gap> H := PcGroupFpGroup( F );
<pc group of size 512 with 9 generators>
gap> IdStandardPresented512Group( H );
[ 512, 2042 ]

# doc/examples.xml:135-148
gap> IdGroup512 := function( G )
>    local code, result;
>    if Size( G ) <> 512 then
>      Error( "G must be a group of order 512 \n" );
>    fi;
>    code := CodePcGroup( G );
>    result := EvaluateBySCSCP( "IdGroup512ByCode", [ code ], 
>                               "localhost", 26133 );
>    return result.object;
> end;;

# doc/examples.xml:154-159
gap> IdGroup512(DihedralGroup(512));
[ 512, 2042 ]

#
gap> STOP_TEST("scscp07.tst", 1 );
