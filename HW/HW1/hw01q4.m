% Omar Aguilar + Nick Stiebler

% Part 1
printstuff(@nonsense, [4, 11, 15, 20]);

% Part 2
x = 0:50;
ns = length(x);
for i = 0:50
    ns(i+1) = nonsense(i);
end

figure;
plot(x,ns,'o--');
title('x vs. nonsense');
legend('nonsense', 'Location', 'NorthWest');
xlabel('x');
ylabel('nonsense');