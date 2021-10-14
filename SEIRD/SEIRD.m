clear; clf

S0 = 1000;
E0 = 20;
I0 = 10;
R0 = 0;
D0 = 0;
x0 = [S0; E0; I0; R0; D0];

alfa = 1/3; %inverse of incubation time
beta = 0.6; %rate of infection
gamma = 1/7; %recovery rate
micro = 0.01; %Mortality
N = S0 + E0 + I0 + R0 + D0;
p = [alfa; beta; gamma; micro; N];

tspan = [0 120];
step = 0.1;
[t, x] = SSA(@propSEIRD, @stochSEIRD, x0, tspan, p, step);
hold on
plot(t, x(:,1), 'b-', 'LineWidth', 2);
plot(t, x(:,2), 'r-', 'LineWidth', 2);
plot(t, x(:,3), 'g-', 'LineWidth', 2);
plot(t, x(:,4), 'c-', 'LineWidth', 2);
plot(t, x(:,5), 'm-', 'LineWidth', 2);
legend('Susceptible', 'Exposed', 'Infected', 'Recovered', 'Dead');