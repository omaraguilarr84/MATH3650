% Omar Aguilar

%% Part A
M = [10^-14 1 0; 1 0 0; 0 1 1];
b = [2; 1; 5];

x_bs = M\b
x_ge = GaussianElimination(M,b)
x_gers = GaussianEliminationWithRowSwap(M,b)

%% Part B
xref = [1; 2; 3]; % Need to make sure this is correct by hand calculation

error_bs = norm(x_bs - xref)
error_ge = norm(x_ge - xref)
error_gers = norm(x_gers - xref)

%% Part C
% Row swapping is a way to optimize the way the solution is found