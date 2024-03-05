% Omar Aguilar
clear; clc;

A = [1 1 2; 4 3 0; 0 2 2];
b = [6; 1; 4];

[L,U] = MakeLU(A);
y = ForwardSubstitution(L,b);
x = BackSubstitution(U,y);

x1 = A\b;

x == x1