function w = propSIR(Y, p)
%
% w = prop_SIR(Y, p)
% Propensities, w, for the SIR model
%
% Input: u - the current state vector (Y = [S I R])
%        p - list of parameters (p = [N beta gamma])

N = p(1); beta = p(2); gamma = p(3);

w = [(beta/N)*Y(2)*Y(1);
    gamma*Y(2)];
end