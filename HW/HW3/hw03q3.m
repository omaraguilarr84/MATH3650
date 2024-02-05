% Omar Aguilar

n = 16000;
b = ones(n,1);
A = zeros(n,n);

for j = n:-1:1
    A(j,j) = 1;
    if j ~= 1
        A(j-1,j) = 2/n;
    end
end

tic;
x = BackSubstitution(A,b);
toc

% Elapsed Time:
% n = 2000: 0.016072 seconds
% n = 4000: 0.019335 seconds
% n = 8000: 0.076467 seconds
% n = 16000: 0.436686 seconds

% Explanation:
% Function is O(n^2), so as n increases, the time it takes for the function
% to be executed does as well.