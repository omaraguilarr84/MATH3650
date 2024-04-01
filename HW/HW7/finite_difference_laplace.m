% Omar Aguilar

function [x,u] = finite_difference_laplace(func,a,b,N,u_a,u_b)
x = linspace(a,b,N)';
h = (b-a)/(N-1);

e = ones(N-2,1);
A = spdiags([e/h^2 -2*e/h^2 e/h^2],-1:1,N-2,N-2);

b = feval(func,x(2:end-1));
b(1) = b(1) - u_a/h^2;
b(end) = b(end) - u_b/h^2;

utemp = A\b;

u = [u_a;utemp;u_b];
end