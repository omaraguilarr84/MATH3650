% Omar Aguilar
format long

func = @(x) 3*cos(x) - sqrt(x);
funderiv = @(x) -3*sin(x) - 1/(2*sqrt(x));
tol = 10^-10;

[roots_bisect,data] = bisect(0,3,func,tol);
roots_bisect
numits_bisect = data(end,1)
[roots_newt,numits_newt] = newt(func,funderiv,1,tol)
[roots_secant,numits_secant] = secant(func,1,1.1,tol)