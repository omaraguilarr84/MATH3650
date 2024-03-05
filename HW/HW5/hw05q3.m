% Omar Aguilar

%% Part A
f = @(x) exp(x.^3);
x_0 = 1;
h = 1 ./ (2.^(2:10));

FD = (f(x_0+h)-f(x_0))./h;

