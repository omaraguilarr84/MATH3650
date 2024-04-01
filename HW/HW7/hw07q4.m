% Omar Aguilar
format long

A = [2 4; 3 6.001];
b = [2; 3];

% Part A
x = A\b;

% Part B
b1 = [2.01; 3];
x1 = A\b1;

% Part C
norm_x = norm(x, inf);
norm_x1 = norm(x1, inf);

relativeDiff = (norm_x - norm_x1)/norm_x;

% Part D
LHS = norm(x-x1, inf)/norm(x, inf);
RHS = cond(A, inf) * norm(b-b1, inf)/norm(b, inf);