# F:=RationalField();
local result;
result:= rec();
result.comment:=
"2.Co1 as 24 x 24 matrices over Z.\n\
";
# result.symmetricforms:= [];
# result.antisymmetricforms:= [];
# result.hermitianforms:= [];
# result.centralizeralgebra:= [];
result.generators:= [
[[2,0,0,-3,-2,-1,0,-2,1,1,0,1,1,0,0,1,-1,-1,0,0,-1,0,0,0],
[-4,1,0,6,4,2,2,3,-1,-3,-1,0,-2,-1,-1,-1,1,1,0,1,0,0,0,0],
[4,-1,0,-6,-4,-2,-3,-4,2,4,3,-3,2,1,2,0,1,-1,-1,-1,1,0,-1,1],
[4,1,1,-6,-3,-2,-1,-4,2,2,1,0,1,0,1,2,0,-1,-1,0,-1,0,0,1],
[5,-2,0,-8,-5,-3,-2,-4,2,4,2,0,2,2,1,1,-1,-1,0,0,0,1,-1,0],
[-3,0,-1,4,1,2,1,1,0,-2,0,0,0,-1,-1,-1,0,0,0,0,-1,-1,0,0],
[1,0,-1,-2,-2,-1,0,-2,0,1,1,0,0,0,0,0,-1,0,0,-1,0,0,0,0],
[-3,1,-1,5,3,1,2,2,-1,-2,-1,0,-1,-1,-1,-1,0,0,1,0,0,0,0,0],
[-2,2,0,3,3,0,2,2,0,-1,-2,1,0,-1,0,0,1,-1,1,1,0,0,0,1],
[9,-1,-1,-13,-9,-5,-4,-9,4,6,4,-1,3,1,2,2,-1,-3,-1,-1,-2,1,-1,1],
[1,-1,-1,-3,-3,-1,-1,-4,2,2,3,-2,1,0,0,0,0,0,-1,-1,0,0,-1,1],
[4,-1,1,-6,-4,-2,-2,-3,2,3,2,-1,2,1,1,1,0,-1,-1,0,0,0,-1,1],
[-4,0,0,5,3,2,2,3,-2,-2,-1,0,-2,0,-1,-1,0,2,0,0,1,0,0,-1],
[8,2,2,-9,-5,-4,0,-5,2,2,2,1,0,1,1,2,-1,0,-1,1,-1,1,0,1],
[-3,0,0,3,3,1,0,3,-1,-1,-1,0,0,0,0,0,1,0,1,0,1,-1,0,0],
[-5,2,0,6,4,3,3,2,-1,-4,-2,1,-2,-2,-2,0,0,1,0,0,-1,-1,1,0],
[3,0,0,-3,-3,-1,0,-2,0,1,1,0,0,0,0,0,-1,0,-1,-1,0,0,0,0],
[0,0,0,1,1,0,0,2,-1,0,-2,1,0,0,0,0,0,-1,1,0,0,0,0,-1],
[-1,0,-1,2,0,1,-1,0,0,0,0,-1,1,-1,0,-1,1,-1,0,-1,0,-1,0,0],
[-4,-1,-1,4,2,2,0,2,-1,-2,-1,1,-1,-1,-1,0,0,1,0,0,-1,0,1,-1],
[-9,1,0,11,7,5,3,6,-2,-5,-3,1,-2,-2,-2,-1,1,2,0,1,0,-1,1,0],
[-6,1,0,9,5,4,3,4,-2,-4,-1,-1,-2,-1,-1,-2,1,2,0,0,1,-1,0,0],
[5,1,-1,-7,-5,-3,-1,-6,2,3,3,0,1,0,1,1,-1,0,-1,-1,-1,1,0,1],
[6,0,1,-6,-4,-2,-2,-3,1,2,1,0,2,1,1,1,-1,-1,0,0,-1,0,0,0]],

[[0,0,1,0,0,0,-1,1,1,0,-1,0,1,0,1,0,1,0,0,1,0,1,0,1],
[3,1,-1,-3,-2,-2,0,-3,1,2,2,-1,1,0,1,0,0,-1,0,-1,0,-1,-1,0],
[-4,0,-1,7,4,3,1,4,-3,-3,-2,0,-1,-1,-1,-1,0,0,1,-1,0,-1,1,-1],
[0,-1,0,1,0,1,-1,1,0,0,0,-1,1,0,1,-1,0,0,0,0,0,0,0,0],
[6,0,2,-6,-4,-2,-3,-2,1,2,1,-1,1,1,2,1,1,-1,-1,0,0,1,0,1],
[2,0,-1,-5,-3,-3,-1,-4,3,3,1,0,2,0,1,1,0,-1,0,0,0,1,-1,1],
[-10,0,0,12,8,5,4,7,-3,-6,-3,1,-3,-1,-3,-1,0,3,1,1,1,-1,1,-1],
[-1,4,1,5,4,1,3,3,-2,-3,-2,1,-1,-1,0,0,1,1,1,0,0,-1,1,0],
[-1,0,1,3,2,1,-1,3,-1,-1,-2,0,1,0,1,0,1,0,1,0,0,0,1,0],
[2,2,1,0,0,0,0,0,0,0,0,-1,1,0,2,0,1,0,0,0,0,0,0,1],
[-5,3,0,11,7,4,4,6,-4,-5,-3,0,-2,-2,-1,-2,1,1,1,-1,1,-2,1,-1],
[3,0,1,-2,-1,-1,-1,0,0,1,-1,0,1,0,1,0,0,-1,0,0,0,1,0,0],
[-4,0,-1,5,3,2,2,2,-1,-3,0,0,-2,-1,-2,-1,0,1,0,0,0,-1,0,-1],
[2,-1,1,-2,-1,-1,-1,0,1,1,1,-1,1,1,1,0,0,0,0,1,1,0,-1,0],
[2,-1,1,-3,-1,-1,-1,0,-1,1,-1,1,-1,1,0,1,-1,0,0,0,0,1,1,-1],
[-2,0,-1,3,1,1,1,1,0,-1,0,0,0,-1,0,-1,0,1,0,0,0,0,0,0],
[-11,-2,-1,12,7,5,3,7,-2,-5,-3,1,-2,-1,-3,-2,0,2,1,1,1,0,0,-1],
[-2,0,1,2,2,1,0,3,-1,-1,-2,1,-1,0,0,0,1,0,0,1,0,1,0,0],
[-6,1,-1,7,5,2,2,4,-2,-2,-3,1,-1,-1,-1,-1,1,0,1,0,1,0,0,0],
[-3,1,-1,3,2,1,2,0,0,-1,0,0,-1,-1,-1,-1,0,0,0,0,0,-1,0,0],
[2,-2,-2,-6,-5,-2,-2,-6,3,4,3,-1,2,0,0,0,-1,-1,-1,-1,-1,0,-1,0],
[2,-1,-2,-4,-4,-1,-1,-5,2,2,4,-2,1,0,0,0,-1,0,-1,-2,0,-1,-1,0],
[-6,1,0,8,5,4,3,3,-2,-4,-1,0,-2,-1,-2,-1,0,2,0,0,0,-2,1,-1],
[14,1,2,-18,-11,-7,-4,-10,4,7,4,0,3,2,3,3,-1,-2,-2,0,-1,2,-1,2]]
];

return result;
