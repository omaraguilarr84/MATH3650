% Omar Aguilar

A = [1 2 3 4 5; 0 6 7 8 9; 0 0 10 11 12; 0 0 0 13 14; 0 0 0 0 15];
b = [-0.2; -15.6; 4.6; 5.4; 3];

x = BackSubstitution(A,b)
r = (A*x) - b
norm_r = norm(r)