function w = propVax(Y, p)
%
% w = prop_SIR(Y, p)
% Propensities, w, for the SEIRD model
%
% Input: u - the current state vector (Y = [S E I R D])
%        p - list of parameters (p = [alfa beta gamma micro N])

alfa = p(1); beta = p(2); gamma = p(3); micro = p(4); v = p(5); N = p(6);

w = [(beta/N)*Y(3)*Y(1);
    alfa*Y(2);
    gamma*Y(3);
    micro*Y(3);
    v];
end