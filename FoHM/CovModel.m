clear; clf

S0 = 10000;
E0 = 200;
I0 = 100;
R0 = 0;
D0 = 0;
V10 = 0;
V20 = 0;
x0 = [S0; E0; I0; R0; D0; V10; V20];

alfa = 1/3; %inverse of incubation time
beta = 0.6; %rate of infection
gamma = 1/7; %recovery rate
micro = 0.01; %Mortality
v1 = 5; %rate of vaccination, dose 1
v2 = 5; %rate of vaccination, dose 2
bt1 = 0.06/14; %breakthrough infection, dose 1
bt2 = 0.05/14; %breakthrough infection, dose 2
btr = 0.0005; %%breakthrough infection, from recovered
N = S0 + E0 + I0 + R0 + D0 + V10 + V20;
p = [alfa; beta; gamma; micro; v1; v2; bt1; bt2; btr; N];

tspan = [0 120];
step = 1;
[t, x] = SSA(@propCovModel, @stochCovModel, x0, tspan, p, step);
hold on
plot(t, x(:,1), 'b-', 'LineWidth', 2);
plot(t, x(:,2), 'r-', 'LineWidth', 2);
plot(t, x(:,3), 'g-', 'LineWidth', 2);
plot(t, x(:,4), 'c-', 'LineWidth', 2);
plot(t, x(:,5), 'k-', 'LineWidth', 2);
plot(t, x(:,7), 'm-', 'LineWidth', 2);
legend('Susceptible', 'Exposed', 'Infected', 'Recovered', 'Dead', 'Vaccinated');