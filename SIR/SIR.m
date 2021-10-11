clear; clf
x0 = [1000;10;0];
p = [x0(1) + x0(2) + x0(3); 0.3; 1/7];
tspan = [0 120];
step = 0.01;
[t, x] = SSA(@propSIR, @stochSIR, x0, tspan, p, step);
hold on
plot(t, x(:,1), 'b-', 'LineWidth', 3);
plot(t, x(:,2), 'r-', 'LineWidth', 3);
plot(t, x(:,3), 'g-', 'LineWidth', 3);
legend('Susceptible', 'Infected', 'Recovered');