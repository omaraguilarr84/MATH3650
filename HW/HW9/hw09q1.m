% Omar Aguilar

px = [0 2 3 4 5 6 7];
py = [-1 -2 -1 3 -1 0 5];
n = length(px);

%% Part A

% Polynomial
A = zeros(n,n);
for i = 1:n
    A(:,i) = px.^(i-1);
end
c = A\py';
x = linspace(-1,6,100);
y1 = c(1) + c(2)*x + c(3)*x.^2 + c(4)*x.^3 + c(5)*x.^4 + c(6)*x.^5 + c(7)*x.^6;

% Cubic Spline
cs = spline(px, py);
y2 = ppval(cs,x);

figure;
plot(px,py,'rs',x,y1,'b',x,y2,'m',px,py,'k');
legend('Points','Polynomial','Cubic Spline','Piece-wise');