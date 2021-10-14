function y_ut = VaxODE(t, y)

alfa = 1/3; %inverse of incubation time
beta = 0.6; %rate of infection
gamma = 1/7; %recovery rate
micro = 0.01; %Mortality
v = 0.05; %rate of vaccination
N = sum(y);

S = y(1); E = y(2); I = y(3); R = y(4); D = y(5); V = y(6);

y_ut = [-(beta/N)*I*S - v;
        (beta/N)*I*S - alfa*E;
        alfa*E - gamma*I - micro*I;
        gamma*I;
        micro*I;
        v];