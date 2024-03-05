% Omar Aguilar

func = @(x) cos(3*x);
u_a = 0;
a = 0;
u_b = 1;
b = 5;

N7 = 7;
N13 = 13;
N25 = 25;

ux_exact = @(x) (1/45)*(8*x + x*cos(15) - 5*cos(3*x) + 5);

[x7,u7] = finite_difference_laplace(func,a,b,N7,u_a,u_b);
[x13,u13] = finite_difference_laplace(func,a,b,N13,u_a,u_b);
[x25,u25] = finite_difference_laplace(func,a,b,N25,u_a,u_b);

x_exact = linspace(a,b,100);
u_exact = ux_exact(x_exact);

figure;
plot(x7,u7,'g',x13,u13,'b',x25,u25,'c',x_exact,u_exact,'r');
legend('N = 7','N = 13','N = 25','Exact');
xlabel('x');
ylabel('U(x)');