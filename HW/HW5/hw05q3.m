% Omar Aguilar
format long

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

colNames = ["h","err_FD","err_BD","err_CD"];
err_table = table(h',err_FD',err_BD',err_CD','VariableNames',colNames)

%% Part C
figure;
loglog(h,err_FD);
xlabel('log(h)');
ylabel('log(error FD)');
title('Forward Difference Error Plot');

figure;
loglog(h,err_BD);
xlabel('log(h)');
ylabel('log(error BD)');
title('Backward Difference Error Plot');

figure;
loglog(h,err_CD);
xlabel('log(h)');
ylabel('log(error CD)');
title('Centered Difference Error Plot');

%% Part D
rate_FD = [0,err_FD(1:end-1)./err_FD(2:end)];
rate_BD = [0,err_BD(1:end-1)./err_BD(2:end)];
rate_CD = [0,err_CD(1:end-1)./err_CD(2:end)];

varNames = ["h","rate_FD","rate_BD","rate_CD"];
err_rate_table = table(h',rate_FD',rate_BD',rate_CD','VariableNames',varNames)