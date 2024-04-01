% Omar Aguilar

%% Part A
N = 7;
[A,b] = finite_difference_system(N);

inv_A = inv(A);

tiledlayout(2,1);
nexttile;
spy(A);
title('A');

nexttile;
spy(inv_A);
title('Inverse A');

%% Part B
N = 1250;
for i = 1:3
    N = N*2
    [A,b] = finite_difference_system(N);
    
    % 1.
    tic
    x1 = A\b;
    toc

    % 2.
    tic
    inv_A = inv(A);
    x2 = inv_A * b;
    toc
    
    % 3.
    A2 = sparse(A);    
    tic
    x3 = A2\b;
    toc
end
