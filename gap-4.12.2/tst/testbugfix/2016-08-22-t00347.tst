# 2016/8/22 (AH)
gap> g:=Group((1,2,4,3)(5,7,6,8)(9,11,10,13)(12,16,14,15)(17,19,18,20)       
> (21,23,22,24)(25,31,36,39,35,27)(26,30,37,38,33,28)(29,32,34)
> (40,41,42,43,44),
> (1,3,6)(2,5,4)(7,9,12)(8,10,14)(11,15,17)(13,16,18)(19,21,24)
> (20,22,23)(25,28,34)(26,33,37)(29,35,38)(30,32,36)(45,46,47,48,49));;
gap> Size(FrattiniSubgroup(g));
2
