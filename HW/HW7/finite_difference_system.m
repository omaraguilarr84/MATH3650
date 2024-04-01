% Omar Aguilar

function [A,b] = finite_difference_system(N)

a = 0;
bb = 1;
u_a = 0;
u_bb = 1;
x = linspace(a,bb,N);
h = (bb-a)/(N-1);

e = ones(N-2,1);
A = spdiags([e -2*e e],-1:1,N-2,N-2);

b = ones(length(x)-2,1)*h^2;
b(1) = b(1) - u_a;
b(end) = b(end) - u_bb;

end