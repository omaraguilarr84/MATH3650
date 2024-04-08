% Omar Aguilar

function [x,l] = PowerMethodMod(A, x0, tolerance)

x=x0;

l = x' * (A*x) / (x'*x);
lold = l+1;

itcount = 0;

while abs(l-lold)>tolerance

    itcount = itcount + 1;
    if itcount > 15
        error('iterations exceeded 15');
    end
    y = A*x;
    x = y / norm(y,inf);

    lold = l;
    l = x' * (A*x) / (x'*x);
end

disp(x);
end