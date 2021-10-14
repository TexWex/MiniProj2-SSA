clear; clf

S0 = 1000;
E0 = 200;
I0 = 100;
R0 = 0;
D0 = 0;
V0 = 0;
x0 = [S0; E0; I0; R0; D0; V0];

alfa = 1/5.5; %inverse of incubation time
beta = 0.2936; %rate of infection
gamma = 1/7; %recovery rate
micro = 0.014; %Mortality
v = 0.01; %rate of vaccination, dose 1
sigma = 0.5; %risk of getting exposed again after vaccine/recovery
N = S0 + E0 + I0 + R0 + D0 + V0;
p = [alfa; beta; gamma; micro; v; sigma; N];

tspan = [0 120];
step = 1;
[t, x] = SSA(@propCovModel, @stochCovModel, x0, tspan, p, step);
hold on
plot(t, x(:,1), 'b-', 'LineWidth', 2);
plot(t, x(:,2), 'r-', 'LineWidth', 2);
plot(t, x(:,3), 'g-', 'LineWidth', 2);
plot(t, x(:,4), 'c-', 'LineWidth', 2);
plot(t, x(:,5), 'k-', 'LineWidth', 2);
plot(t, x(:,6), 'm-', 'LineWidth', 2);
legend('Susceptible', 'Exposed', 'Infected', 'Recovered', 'Dead', 'Vaccinated');