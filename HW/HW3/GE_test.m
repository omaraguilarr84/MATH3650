A = [0 1 2 3; -3 0 0 1; 0 1 1/5 3; 2 5 1 7];
b = [1; 2; 3; 4];

% A = [0 1 4; 2 4 6; 5 6 0];
% b = [9; 16; 6];

x = GaussianEliminationWithRowSwap(A,b)