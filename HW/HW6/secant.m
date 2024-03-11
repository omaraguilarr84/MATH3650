function [xnew,numits] = secant(func,x0,x1,tol)
% solve func(x)=0 using the secant method with starting
% values x0 and x1 up to the tolerance tol
xold = x0;
xnew = x1;
fold = func(xold);
numits = 0;
while abs(xnew-xold)>tol
fnew = func(xnew);
% need to set xold = xnew but can not overwrite it
% because we need the real xold in the computation
% of xnew:
temp = xnew;
xnew = xnew - fnew*(xnew-xold) / (fnew - fold);
xold = temp;
fold = fnew;
numits = numits+1;
end
