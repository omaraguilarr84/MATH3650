% Omar Aguilar

f = @(x) sin(x);
fdx = @(x) cos(x);
x = 0;
h = (1/2).^(1:10);
fprime_fd = (f(x+h)-f(x))./h;
error = abs(fprime_fd-fdx(x));

[h',fprime_fd',error']