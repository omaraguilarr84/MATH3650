% Omar Aguilar

%% Part A
f = @(x) exp(x.^3);
x_0 = 1;
h = 1 ./ (2.^(2:10));

FD = (f(x_0+h)-f(x_0))./h;
BD = (f(x_0)-f(x_0-h))./h;
CD = (f(x_0+h)-f(x_0-h))./(2*h);

%% Part B
fdx = @(x) 3*(x^2)*exp(x^3);
exact = fdx(x_0);

err_FD = abs(exact - FD);
err_BD = abs(exact - BD);
err_CD = abs(exact - CD);

