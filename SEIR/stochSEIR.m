function nr  = stochSEIR()
% Stoichiometry matrix, nr, for the SEIR model:

nr = [ -1 1 0 0;
       0 -1 1 0;
       0 0 -1 1];
end