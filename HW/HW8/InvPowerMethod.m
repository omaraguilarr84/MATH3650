% Omar Aguilar

function [l, x] = InvPowerMethod(A, x0, tolerance)

x = x0;

l = x' * (A*x) / (x'*x);
lold = l+1;

itcount = 0;

while abs(l-lold)>tolerance

    itcount = itcount + 1;
    if itcount > 100
        error('iterations exceeded 100');
    end
    y = A\x;
    x = y / norm(y,inf);

    lold = l;
    l = x' * (A*x) / (x'*x);
end

end