function w = propCovModel(Y, p)
%
% w = prop_SIR(Y, p)
% Propensities, w, for the SEIRD model
%
% Input: u - the current state vector (Y = [S E I R D])
%        p - list of parameters (p = [alfa beta gamma micro N])

alfa = p(1); beta = p(2); gamma = p(3); micro = p(4); v1 = p(5); v2 = p(6);
bt1 = p(7); bt2 = p(8); btr = p(9); N = p(10);

S = Y(1); E = Y(2); I = Y(3); R = Y(4); D = Y(5); V1 = Y(6); V2 = Y(7);

w = [(beta/N)*I*S;
    alfa*E;
    gamma*I;
    micro*I;
    v1;
    v2;
    bt1*(E * I)*V1;
    bt2*(E * I)*V2;
    btr*(E * I)*R];
end