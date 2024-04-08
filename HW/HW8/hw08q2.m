% Omar Aguilar
A = [0 2 3; 4 5 6; 7 8 -9];
B = [2 3 2; 1 0 -2; -1 -3 -1];

%% Part A
x0 = [0; 0; 1];
tolerance = 1e-8;
[x1, l1] = PowerMethod(A, x0, tolerance);
l1_verify = eigs(A);

%% Part B
x0 = [1; 1; 1];
tolerance = 1e-8;
[x2, l2] = PowerMethod(B, x0, tolerance)
l2_verify = eigs(B)

[x3, l3] = PowerMethodMod(B, x0, tolerance)

%% Part C
x0 = [2; 2; 2];
tolerance = 1e-8;
[x4, l4] = PowerMethod(B, x0, tolerance)