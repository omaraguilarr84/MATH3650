function [x] = GaussianElimination(A,b)

n = length(b);

for k = 1:n-1
% Check if pivot is equal to zero
    if abs(A(k,k)) < 1e-15
        error('A has diagonal entries of zero')
    end

    % Apply transformation to remaining submatrix and RHS vector
     for i = k+1:n
        m = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j) - m*A(k,j);
        end
        b(i) = b(i) - m*b(k);
    end
end

x = BackSubstitution(A,b);