function y_ut = SIRODE(t, y)

N = y(1) + y(2) + y(3);
beta = 0.3;
gamma = 1/7;

y_ut = [-(beta/N)*y(2)*y(1);
    (beta/N)*y(2)*y(1) - gamma*y(2);
    gamma*y(2)];