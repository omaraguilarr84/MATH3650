% Omar Aguilar + Nick Stiebler

function printstuff(func, values)
    fprintf('Function evaluated at %d points:\n', length(values));
    
    for i = 1:length(values)
        x = values(i);
        y = func(x);
        fprintf('for x = %.6f the value is %.6f\n', x, y);
    end
end
