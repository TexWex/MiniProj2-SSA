function nr  = stochVax()
% Stoichiometry matrix, nr, for the SEIRD model:

nr = [ -1 1 0 0 0 0;
       0 -1 1 0 0 0;
       0 0 -1 1 0 0;
       0 0 -1 0 1 0;
       -1 0 0 0 0 1];
end