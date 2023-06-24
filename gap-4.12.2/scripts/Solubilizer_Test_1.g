solubilizer := function(G, x)
	rad := RadicalGroup(G);
	if x in rad then
		return G;
	else
		N := Normalizer(G,Subgroup(G,[x]));
		solx := List(N);
		for y in G do
			if not y in solx then
				H := Subgroup(G, [x,y]);
				if IsSolvable(H) then
					for h in List(H) do
						if not h in solx then
							for n in N do
								Append(solx, [n*h*Inverse(n)]);
							od;
						fi;
					od;
				fi;
			fi;
		od;
		solx := Set(solx);

		if Size(solx) mod Size(N) <> 0 then
			Print("\nNORMALIZER CONTRADICTION: ", x);
		fi;
		if IsPrimePowerInt(Size(solx)) and Size(solx) mod 2 <> 0 then
			Print("\nPRIME POWER CONTRADICTION: ", x);
		fi;
		return Set(solx);
	fi;
end;

checkGroup := function(G)
	sizes := [];
	for x in ConjugacyClasses(G) do
		x := Representative(x);
		Append(sizes, [Size(solubilizer(G,x))]);
	od;
	Print("\n-----------\nList of possible |Sol(G)| for G = ", StructureDescription(G), ":\n", Set(sizes), "\nNumber of conjugacy classes = ", Size(ConjugacyClasses(G)), "\nNumber of solubilizer orders = ", Size(Set(sizes)),"\n-----------\n");
end;

groups := SimpleGroupsIterator(1, 10^18:NOPSL2);
for G in groups do
	checkGroup(G);
od;


