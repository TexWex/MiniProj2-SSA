starttid = 0;
sluttid = 120;
tidsintervall = [starttid sluttid];

S0 = 995;
I0 = 5;
R0 = 0;

y0 = [S0; I0; R0];

[t, y] = ode45(@SIRODE, tidsintervall, y0);

plot(t, y);

legend('Susceptible', 'Infected', 'Recovered');