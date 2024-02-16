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
% In regular Gaussian Elimination, there is no way to zero out the rows
% below it if there is a 0 on the pivot. Thus, row swapping is needed to
% optimize the solution further to get a more accurate answer.