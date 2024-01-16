% approximate f'(x_0) for f(x)=sin(x), x_0 = 1

format long

x = 1;
%h = 1e-10;
f = @(x) sin(x);
exact = cos(x)

for i = 1:10
    h = 10^-i
    derivative = f(f(x+h)-f(x)) / h
    error = abs(derivative-exact)
end