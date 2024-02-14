% Omar Aguilar

A = [1 1 0; 2 0 1; -1 -1 1];
b = [2; -10; -2];

[L,U] = MakeLU(A);
y = ForwardSubstitution(L,b);
x = BackSubstitution(U,y);

x1 = A\b;

x == x1