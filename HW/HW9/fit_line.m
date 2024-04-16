% Omar Aguilar

function [a0, a1] = fit_line(x,y)

X = sum(x);
Y = sum(y);
W = sum(x.^2);
Z = sum(y.^2);
n = length(x);

A = [n X; X W];
b = [Y; Z];
a = A\b;

a0 = a(1);
a1 = a(2);

end