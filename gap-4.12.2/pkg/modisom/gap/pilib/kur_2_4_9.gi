BindGlobal( "Kur_2_4_9", function() 
local A, i; 
A := rec(); 
A.rnk := 2; 
A.dim := 102; 
A.com := false; 
A.fld := GF(3^2); 
A.wgs := [ 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 
  4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
  7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 
  9, 9, 9, 9, 9 ]; 
A.wds := [ ,, [ 1, 1 ], [ 2, 1 ], [ 1, 2 ], [ 2, 2 ], [ 1, 3 ], [ 2, 3 ], 
  [ 1, 4 ], [ 2, 4 ], [ 1, 5 ], [ 2, 5 ], [ 1, 6 ], [ 2, 6 ], [ 2, 7 ], 
  [ 1, 8 ], [ 2, 8 ], [ 1, 9 ], [ 2, 9 ], [ 1, 10 ], [ 2, 10 ], [ 2, 11 ], 
  [ 1, 12 ], [ 2, 12 ], [ 2, 13 ], [ 1, 15 ], [ 2, 15 ], [ 1, 16 ], 
  [ 2, 16 ], [ 1, 17 ], [ 2, 17 ], [ 2, 18 ], [ 1, 19 ], [ 2, 19 ], 
  [ 2, 20 ], [ 1, 22 ], [ 2, 22 ], [ 2, 23 ], [ 1, 24 ], [ 2, 24 ], 
  [ 2, 25 ], [ 1, 26 ], [ 2, 26 ], [ 1, 27 ], [ 2, 27 ], [ 2, 28 ], 
  [ 1, 29 ], [ 2, 29 ], [ 2, 30 ], [ 1, 32 ], [ 2, 32 ], [ 2, 33 ], 
  [ 1, 34 ], [ 2, 34 ], [ 2, 35 ], [ 2, 36 ], [ 1, 37 ], [ 2, 37 ], 
  [ 2, 38 ], [ 2, 39 ], [ 2, 41 ], [ 2, 42 ], [ 1, 43 ], [ 2, 43 ], 
  [ 2, 44 ], [ 1, 46 ], [ 2, 46 ], [ 2, 47 ], [ 1, 48 ], [ 2, 48 ], 
  [ 2, 49 ], [ 2, 50 ], [ 1, 51 ], [ 2, 51 ], [ 2, 52 ], [ 2, 53 ], 
  [ 2, 55 ], [ 2, 56 ], [ 2, 57 ], [ 2, 59 ], [ 2, 60 ], [ 1, 62 ], 
  [ 2, 62 ], [ 2, 63 ], [ 2, 65 ], [ 2, 66 ], [ 1, 67 ], [ 2, 67 ], 
  [ 2, 68 ], [ 2, 69 ], [ 2, 71 ], [ 2, 72 ], [ 2, 75 ], [ 2, 76 ], 
  [ 2, 79 ], [ 2, 81 ], [ 2, 82 ], [ 2, 84 ], [ 2, 86 ], [ 2, 89 ], 
  [ 2, 90 ], [ 2, 94 ] ]; 
A.tab := [  ]; 
A.tab[1] := [ [ 1, 3, 1 ], [ 2, 5, 1 ], [ 3, 7, 1 ], [ 4, 9, 1 ], 
  [ 5, 11, 1 ], [ 6, 13, 1 ], [ 8, 16, 1 ], [ 9, 18, 1 ], [ 10, 20, 1 ], 
  [ 11, 15, 2 ], [ 11, 16, 2 ], [ 11, 18, 2 ], [ 12, 23, 1 ], [ 13, 17, 2 ], 
  [ 13, 19, 2 ], [ 13, 20, 2 ], [ 13, 22, 2 ], [ 13, 23, 2 ], [ 14, 21, 2 ], 
  [ 14, 24, 2 ], [ 14, 25, 2 ], [ 15, 26, 1 ], [ 16, 28, 1 ], [ 17, 30, 1 ], 
  [ 18, 26, 2 ], [ 18, 28, 2 ], [ 19, 33, 1 ], [ 20, 27, 2 ], [ 20, 29, 2 ], 
  [ 20, 30, 2 ], [ 20, 32, 2 ], [ 20, 33, 2 ], [ 21, 31, 2 ], [ 21, 34, 2 ], 
  [ 21, 35, 2 ], [ 22, 36, 1 ], [ 23, 27, 1 ], [ 23, 33, 2 ], [ 23, 36, 2 ], 
  [ 24, 39, 1 ], [ 25, 31, 1 ], [ 25, 38, 2 ], [ 25, 39, 2 ], [ 26, 42, 1 ], 
  [ 27, 44, 1 ], [ 28, 42, 2 ], [ 29, 47, 1 ], [ 30, 43, 2 ], [ 30, 44, 2 ], 
  [ 30, 46, 2 ], [ 30, 47, 2 ], [ 31, 45, 2 ], [ 31, 48, 2 ], [ 31, 49, 2 ], 
  [ 32, 50, 1 ], [ 33, 47, 2 ], [ 33, 50, 2 ], [ 34, 53, 1 ], [ 35, 45, 1 ], 
  [ 35, 52, 2 ], [ 35, 53, 2 ], [ 36, 43, 1 ], [ 36, 44, 1 ], [ 36, 47, 1 ], 
  [ 37, 57, 1 ], [ 38, 45, 2 ], [ 39, 45, 1 ], [ 39, 48, 1 ], [ 39, 51, 1 ], 
  [ 39, 52, 1 ], [ 39, 57, 2 ], [ 40, 58, 2 ], [ 40, 59, 2 ], [ 40, 60, 2 ], 
  [ 41, 54, 1 ], [ 41, 58, 1 ], [ 41, 59, 1 ], [ 43, 63, 1 ], [ 44, 62, 2 ], 
  [ 44, 63, 2 ], [ 45, 64, 2 ], [ 45, 65, 2 ], [ 46, 66, 1 ], [ 47, 63, 2 ], 
  [ 47, 66, 2 ], [ 48, 69, 1 ], [ 49, 68, 2 ], [ 49, 69, 2 ], [ 50, 63, 1 ], 
  [ 51, 73, 1 ], [ 53, 64, 1 ], [ 53, 67, 1 ], [ 53, 68, 1 ], [ 53, 73, 2 ], 
  [ 54, 74, 2 ], [ 54, 75, 2 ], [ 54, 76, 2 ], [ 55, 70, 1 ], [ 55, 74, 1 ], 
  [ 55, 75, 1 ], [ 56, 67, 2 ], [ 56, 68, 2 ], [ 56, 69, 2 ], [ 56, 72, 1 ], 
  [ 56, 73, 1 ], [ 57, 64, 1 ], [ 57, 65, 2 ], [ 57, 67, 1 ], [ 57, 68, 1 ], 
  [ 57, 69, 2 ], [ 58, 70, 1 ], [ 58, 74, 1 ], [ 58, 78, 2 ], [ 58, 79, 2 ], 
  [ 59, 71, 2 ], [ 59, 75, 2 ], [ 59, 76, 1 ], [ 59, 78, 2 ], [ 59, 79, 1 ], 
  [ 60, 70, 2 ], [ 60, 71, 1 ], [ 60, 74, 2 ], [ 60, 75, 1 ], [ 60, 76, 2 ], 
  [ 60, 78, 1 ], [ 60, 79, 2 ], [ 61, 77, 1 ], [ 61, 80, 1 ], [ 61, 81, 1 ], 
  [ 62, 82, 1 ], [ 63, 82, 2 ], [ 64, 83, 2 ], [ 64, 84, 2 ], [ 65, 83, 1 ], 
  [ 67, 87, 1 ], [ 69, 83, 1 ], [ 69, 84, 1 ], [ 69, 87, 2 ], [ 70, 88, 2 ], 
  [ 70, 89, 2 ], [ 70, 90, 2 ], [ 71, 88, 1 ], [ 71, 89, 1 ], [ 72, 86, 1 ], 
  [ 72, 87, 1 ], [ 73, 83, 2 ], [ 73, 84, 2 ], [ 74, 88, 1 ], [ 74, 89, 1 ], 
  [ 74, 90, 2 ], [ 74, 92, 1 ], [ 75, 85, 2 ], [ 75, 89, 1 ], [ 75, 90, 2 ], 
  [ 76, 85, 1 ], [ 76, 88, 2 ], [ 76, 89, 2 ], [ 76, 90, 1 ], [ 77, 91, 1 ], 
  [ 77, 93, 1 ], [ 77, 94, 1 ], [ 78, 85, 1 ], [ 78, 88, 1 ], [ 78, 89, 2 ], 
  [ 78, 90, 2 ], [ 78, 92, 2 ], [ 79, 85, 2 ], [ 79, 90, 1 ], [ 79, 92, 2 ], 
  [ 80, 91, 2 ], [ 80, 94, 2 ], [ 80, 95, 2 ], [ 81, 93, 2 ], [ 83, 97, 2 ], 
  [ 85, 98, 1 ], [ 88, 98, 2 ], [ 88, 99, 1 ], [ 89, 98, 2 ], [ 90, 98, 1 ], 
  [ 91, 100, 1 ], [ 91, 101, 1 ], [ 92, 99, 2 ], [ 93, 100, 2 ], 
  [ 93, 101, 1 ], [ 94, 100, 2 ], [ 96, 102, 2 ] ]; 
A.tab[2] := [ [ 1, 4, 1 ], [ 2, 6, 1 ], [ 3, 8, 1 ], [ 4, 10, 1 ], 
  [ 5, 12, 1 ], [ 6, 14, 1 ], [ 7, 15, 1 ], [ 8, 17, 1 ], [ 9, 19, 1 ], 
  [ 10, 21, 1 ], [ 11, 22, 1 ], [ 12, 24, 1 ], [ 13, 25, 1 ], [ 15, 27, 1 ], 
  [ 16, 29, 1 ], [ 17, 31, 1 ], [ 18, 32, 1 ], [ 19, 34, 1 ], [ 20, 35, 1 ], 
  [ 22, 37, 1 ], [ 23, 38, 1 ], [ 24, 40, 1 ], [ 25, 41, 1 ], [ 26, 43, 1 ], 
  [ 27, 45, 1 ], [ 28, 46, 1 ], [ 29, 48, 1 ], [ 30, 49, 1 ], [ 32, 51, 1 ], 
  [ 33, 52, 1 ], [ 34, 54, 1 ], [ 35, 55, 1 ], [ 36, 56, 1 ], [ 37, 58, 1 ], 
  [ 38, 59, 1 ], [ 39, 60, 1 ], [ 41, 61, 1 ], [ 42, 62, 1 ], [ 43, 64, 1 ], 
  [ 44, 65, 1 ], [ 46, 67, 1 ], [ 47, 68, 1 ], [ 48, 70, 1 ], [ 49, 71, 1 ], 
  [ 50, 72, 1 ], [ 51, 74, 1 ], [ 52, 75, 1 ], [ 53, 76, 1 ], [ 55, 77, 1 ], 
  [ 56, 78, 1 ], [ 57, 79, 1 ], [ 59, 80, 1 ], [ 60, 81, 1 ], [ 62, 83, 1 ], 
  [ 63, 84, 1 ], [ 65, 85, 1 ], [ 66, 86, 1 ], [ 67, 88, 1 ], [ 68, 89, 1 ], 
  [ 69, 90, 1 ], [ 71, 91, 1 ], [ 72, 92, 1 ], [ 73, 89, 2 ], [ 73, 90, 1 ], 
  [ 73, 92, 1 ], [ 75, 93, 1 ], [ 76, 94, 1 ], [ 78, 91, 2 ], [ 78, 93, 2 ], 
  [ 79, 95, 1 ], [ 81, 96, 1 ], [ 82, 97, 1 ], [ 84, 98, 1 ], [ 86, 99, 1 ], 
  [ 87, 98, 1 ], [ 87, 99, 1 ], [ 89, 100, 1 ], [ 90, 101, 1 ], 
  [ 92, 100, 2 ], [ 94, 102, 1 ], [ 95, 102, 2 ] ]; 
for i in [1..A.rnk] do 
    A.tab[i] := ListToMat(A.tab[i],A.dim,A.fld); 
od; 
return A; 
end ); 