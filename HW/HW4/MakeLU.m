% Omar Aguilar

function [L,U] = MakeLU(A)

n = length(A);

U = A;
L = zeros(n,n);
for ii = 1:n
    L(ii,ii) = 1;
end

for k = 1:n-1
    % Check if pivot is equal to zero
    if abs(U(k,k)) < 1e-15
        error('A has diagonal entries of zero')
    end

    % Apply transformation to remaining submatrix and RHS vector
     for i = k+1:n
        m = U(i,k)/U(k,k);
        L(i,k) = m;
        for j = k:n
            U(i,j) = U(i,j) - m*U(k,j);
        end
    end
end