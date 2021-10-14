function w = propSEIR(Y, p)
%
% w = prop_SIR(Y, p)
% Propensities, w, for the SIR model
%
% Input: u - the current state vector (Y = [S E I R])
%        p - list of parameters (p = [N beta gamma])

alfa = p(1); beta = p(2); gamma = p(3); N = p(4);

w = [(beta/N)*Y(3)*Y(1);
    alfa*Y(2)
    gamma*Y(3)];
end