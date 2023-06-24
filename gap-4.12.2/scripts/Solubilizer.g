# G := AlternatingGroup(6);
# G := DihedralGroup(8);
G := SymmetricGroup(7);
x:=Elements(G)[2];
solubilizer := function(x, G)
    ans := [x];
    for y in Elements(G) do
        H:=Subgroup(G,[x, y]);
        if IsSolvable(H) then
            Append(ans, [y]);
        fi;
    od;
    return ans;
    end;;

getRadical := function(G)
    radical := [];

    for element in Elements(G) do
        a := Size(solubilizer(element,G));
        if a = Size(G) then
            Append(radical, [element]);
        fi;
    od;
    return Size(radical);
    end;;

printSolubilizers := function(G)
    for element in Elements(G) do
        Print(solubilizer(element,G));
    od;
end;;

# printSolubilizers(G);
Print(getRadical(G));
# Print(solubilizer(x,G));
# Print(Length(solubilizer(x,G)));
