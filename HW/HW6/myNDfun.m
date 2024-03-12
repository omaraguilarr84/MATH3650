% Omar Aguilar
function y = myNDfun(x)

y(1,1) = x(1)^2 - x(2) - sin(x(3)) + 1;
y(2,1) = x(1) + 1 + sin(10*x(2)) - x(2);
y(3,1) = (1-x(1)) * x(3) - x(2);

end