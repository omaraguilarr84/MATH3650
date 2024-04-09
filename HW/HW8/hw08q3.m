% Omar Aguilar
A = [0 2 3; 4 5 6; 7 8 -9];
x0 = [1; 1; 1];
tolerance = 1e-8;

[lambda, x] = InvPowerMethod(A, x0, tolerance)