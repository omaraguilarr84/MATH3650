% Omar Aguilar

%% Part A
b1 = 0.3;
b2 = 0.3;
b3 = 0.3;
b4 = 0.1;

d1 = 0.1;
d2 = 0.2;
d3 = 0.5;
d4 = 0.9;

mat = [b1 b2 b3 b4; (1-d1) 0 0 0; 0 (1-d2) 0 0; 0 0 (1-d3) (1-d4)];
l = eigs(mat);

biggest_eig = max(l)

%% Part B
P1 = 100;
P2 = 200;
P3 = 150;
P4 = 75;
P_0 = [P1 P2 P3 P4];

n = 3000;
P = mat.^n .* P_0