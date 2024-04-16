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
x = linspace(0,7,100);
func = @(x) c(1) + c(2)*x + c(3)*x.^2 + c(4)*x.^3 + c(5)*x.^4 + c(6)*x.^5 + c(7)*x.^6;
y1 = func(x);

% Cubic Spline
cs = spline(px, py);
y2 = ppval(cs,x);

figure;
plot(px,py,'rs',x,y1,'b',x,y2,'m',px,py,'k');
legend('Points','Polynomial','Cubic Spline','Piecewise');

%% Part B
x_eval = 1;

% Polynomial
y1_eval = func(x_eval)

% Cubic Spline
y2_eval = ppval(cs, x_eval)

% Piecewise
y3_eval = py(1) + (py(2)-py(1))/(px(2)-px(1)) * (x_eval-px(1))

%% Part C
h = 10^-3;

% Polynomial
slope1 = (func(x_eval + h) - func(x_eval - h))/(2 * h)

% Cubic Spline
slope2 = (ppval(cs, x_eval + h) - ppval(cs, x_eval -h))/(2 * h)

% Piecewise
slope3 = (interp1(px,py,x_eval+h)-interp1(px,py,x_eval-h))/(2 * h)