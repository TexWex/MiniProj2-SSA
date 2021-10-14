function w = propCovModel(Y, p)
%
% w = prop_SIR(Y, p)
% Propensities, w, for the SEIRD model
%
% Input: Y - the current state vector (Y = [S E I R D V1 V2])
%        p - list of parameters (p = [alfa beta gamma micro N])

alfa = p(1); beta = p(2); gamma = p(3); micro = p(4); v = p(5); sigma = p(6); N = p(7);

S = Y(1); E = Y(2); I = Y(3); R = Y(4); V = Y(6);

w = [(beta/N)*I*S;
    alfa*E;
    sigma*(beta/N)*I*V;
    gamma*I;
    micro*I;
    sigma*(beta/N)*I*R;
    v*S;
    v*R];
end