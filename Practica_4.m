
[t, x] = ode45(@prac4, [0, 20], [0 2]);

figure(1)
plot(t, x(:, 1), "r-")
grid on

function dx=prac4(t, x)

m = 10;
r = 0.05;
k = 100;

dx = zeros(2,1);

dx(1) = x(2);
dx(2) = (2/(3*m*(r^2)))*(-k*(r^2)*x(1));
end