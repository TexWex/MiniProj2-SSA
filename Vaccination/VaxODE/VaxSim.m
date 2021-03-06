starttid = 0;
sluttid = 120;
tidsintervall = [starttid sluttid];

S0 = 1000;
E0 = 20;
I0 = 10;
R0 = 0;
D0 = 0;
V0 = 0;
x0 = [S0; E0; I0; R0; D0; V0];

[t, y] = ode45(@VaxODE, tidsintervall, x0);

plot(t, y);
legend('Susceptible', 'Exposed', 'Infected', 'Recovered', 'Dead', 'Vaccinated');