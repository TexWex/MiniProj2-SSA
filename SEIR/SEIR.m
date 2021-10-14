clear; clf
x0 = [1000;20;10;0];
p = [1/3; 0.5; 1/7; x0(1) + x0(2) + x0(3) + x0(4)];
tspan = [0 120];
step = 0.01;
[t, x] = SSA(@propSEIR, @stochSEIR, x0, tspan, p, step);
hold on
plot(t, x(:,1), 'b-', 'LineWidth', 3);
plot(t, x(:,2), 'm-', 'LineWidth', 3);
plot(t, x(:,3), 'r-', 'LineWidth', 3);
plot(t, x(:,4), 'g-', 'LineWidth', 3);
legend('Susceptible', 'Exposed', 'Infected', 'Recovered');